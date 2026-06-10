#!/bin/bash
cd /Users/franzi/Github/Z2X-Programmer/Z2X-Programmer && rm -rf bin obj && echo "Cache gelöscht"
cd /Users/franzi/Github/Z2X-Programmer
dotnet build Z2X-Programmer/Z2X-Programmer.csproj -c Release -f net10.0-maccatalyst /p:RuntimeIdentifier=maccatalyst-x64
cp -r Z2X-Programmer/bin/Release/net10.0-maccatalyst/maccatalyst-x64/Z2X-Programmer.app /Applications/
echo "✓ Z2X-Programmer installed in /Applications"