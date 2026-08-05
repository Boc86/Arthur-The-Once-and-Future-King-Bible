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
