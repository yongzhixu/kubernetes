echo "label nodes"
kubectl label nodes node1 hardware = high-specific
kubectl label nodes node2 hardware = low-specific

echo "add pod that use a specific label"
nodeSelector:
    hardware: high-specific