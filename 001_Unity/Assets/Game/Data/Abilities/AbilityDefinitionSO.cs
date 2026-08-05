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
