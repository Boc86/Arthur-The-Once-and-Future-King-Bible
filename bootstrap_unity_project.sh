#!/bin/bash

set -e

echo "=========================================="
echo "Arthurian Unity Project Bootstrap"
echo "=========================================="

ROOT="001_Unity/Assets/Game"

mkdir -p \
"$ROOT/Scripts/Core" \
"$ROOT/Scripts/Characters" \
"$ROOT/Scripts/Combat" \
"$ROOT/Scripts/Enemies" \
"$ROOT/Scripts/Systems" \
"$ROOT/Scripts/Events" \
"$ROOT/Data/Characters" \
"$ROOT/Data/Items" \
"$ROOT/Data/Abilities" \
"$ROOT/Data/Enemies" \
"$ROOT/Prefabs/Characters" \
"$ROOT/Prefabs/Enemies" \
"$ROOT/Prefabs/UI" \
"$ROOT/Scenes" \
"$ROOT/UI" \
"$ROOT/Editor"


echo "Folders created"


cat > "$ROOT/Scripts/Core/GameService.cs" <<'EOF'
using UnityEngine;

namespace Arthurian.Core
{
    public abstract class GameService : MonoBehaviour
    {
        public virtual void Initialize()
        {
        }
    }
}
EOF


cat > "$ROOT/Scripts/Events/GameEvent.cs" <<'EOF'
using System;

namespace Arthurian.Events
{
    public class GameEvent
    {
        public event Action OnRaised;

        public void Raise()
        {
            OnRaised?.Invoke();
        }
    }
}
EOF


cat > "$ROOT/Scripts/Systems/ServiceLocator.cs" <<'EOF'
using System;
using System.Collections.Generic;

namespace Arthurian.Systems
{
    public static class ServiceLocator
    {
        private static readonly Dictionary<Type, object> services = new();

        public static void Register<T>(T service)
        {
            services[typeof(T)] = service;
        }

        public static T Get<T>()
        {
            return (T)services[typeof(T)];
        }
    }
}
EOF


cat > "$ROOT/Scripts/Characters/CharacterBase.cs" <<'EOF'
using UnityEngine;

namespace Arthurian.Characters
{
    public abstract class CharacterBase : MonoBehaviour
    {
        public string CharacterName;

        protected virtual void Awake()
        {

        }
    }
}
EOF


cat > "$ROOT/Scripts/Combat/HealthComponent.cs" <<'EOF'
using UnityEngine;

namespace Arthurian.Combat
{
    public class HealthComponent : MonoBehaviour
    {
        [SerializeField]
        private int maxHealth = 100;

        private int currentHealth;


        private void Awake()
        {
            currentHealth = maxHealth;
        }


        public void TakeDamage(int amount)
        {
            currentHealth -= amount;

            if(currentHealth <= 0)
            {
                Die();
            }
        }


        private void Die()
        {
            Debug.Log($"{name} died");
        }
    }
}
EOF


cat > "$ROOT/Data/Characters/CharacterDefinitionSO.cs" <<'EOF'
using UnityEngine;

namespace Arthurian.Data
{
    [CreateAssetMenu(
        menuName="Arthurian/Character Definition")]
    public class CharacterDefinitionSO : ScriptableObject
    {
        public string characterName;
        public int startingHealth;
        public int startingStrength;
    }
}
EOF


cat > "$ROOT/Data/Items/ItemDefinitionSO.cs" <<'EOF'
using UnityEngine;

namespace Arthurian.Data
{
    [CreateAssetMenu(
        menuName="Arthurian/Item Definition")]
    public class ItemDefinitionSO : ScriptableObject
    {
        public string itemName;
        public Sprite icon;
    }
}
EOF


cat > "$ROOT/Data/Abilities/AbilityDefinitionSO.cs" <<'EOF'
using UnityEngine;

namespace Arthurian.Data
{
    [CreateAssetMenu(
        menuName="Arthurian/Ability Definition")]
    public class AbilityDefinitionSO : ScriptableObject
    {
        public string abilityName;
        public float cooldown;
    }
}
EOF


cat > "$ROOT/Data/Enemies/EnemyDefinitionSO.cs" <<'EOF'
using UnityEngine;

namespace Arthurian.Data
{
    [CreateAssetMenu(
        menuName="Arthurian/Enemy Definition")]
    public class EnemyDefinitionSO : ScriptableObject
    {
        public string enemyName;
        public int health;
        public int damage;
    }
}
EOF


cat > "$ROOT/Scripts/Enemies/EnemyBase.cs" <<'EOF'
using UnityEngine;
using Arthurian.Characters;

namespace Arthurian.Enemies
{
    public class EnemyBase : CharacterBase
    {
        public int damage = 10;

        public void Attack()
        {

        }
    }
}
EOF


cat > "$ROOT/Scripts/Combat/DamageEvent.cs" <<'EOF'
namespace Arthurian.Combat
{
    public struct DamageEvent
    {
        public int Amount;

        public DamageEvent(int amount)
        {
            Amount = amount;
        }
    }
}
EOF


echo ""
echo "Unity bootstrap complete"

git add .
git commit -m "Bootstrap Unity project architecture and core systems" || true

echo "Committed."
