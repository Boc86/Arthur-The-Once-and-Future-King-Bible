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
