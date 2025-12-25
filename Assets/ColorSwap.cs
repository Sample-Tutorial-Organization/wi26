using UnityEngine;

public class ColorSwap : MonoBehaviour
{
    private Material _materialOne;

    public Material materialTwo;

    private bool _isSwapped;

    // Start is called once before the first execution of Update after the MonoBehaviour is created
    private void Start()
    {
        _materialOne = gameObject.GetComponent<Renderer>().material;
    }

    public void Swap()
    {
        gameObject.GetComponent<Renderer>().material = _isSwapped ? materialTwo : _materialOne;
        _isSwapped = !_isSwapped;
    }
}