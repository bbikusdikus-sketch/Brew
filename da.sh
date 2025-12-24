#!/bin/bash
find . -type f -print0 | while IFS= read -r -d '' file; do
    rel_path="${file#./}"
    echo "=== $rel_path ==="
    cat "$file"
    echo ""
done
