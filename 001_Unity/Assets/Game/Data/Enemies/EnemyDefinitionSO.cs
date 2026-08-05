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
