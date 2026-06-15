export default function handler(req, res) {
    const { name, bundleId, version, ipaUrl, iconUrl } = req.query;
    if (!ipaUrl || !bundleId || !name) return res.status(400).send('بيانات التطبيق غير مكتملة');

    const plistXML = `<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>items</key>
    <array>
        <dict>
            <key>assets</key>
            <array>
                <dict>
                    <key>kind</key>
                    <string>software-package</string>
                    <key>url</key>
                    <string>${ipaUrl}</string>
                </dict>
                <dict>
                    <key>kind</key>
                    <string>display-image</string>
                    <key>needs-shine</key>
                    <false/>
                    <key>url</key>
                    <string>${iconUrl || 'https://example.com/default-icon.png'}</string>
                </dict>
            </array>
            <key>metadata</key>
            <dict>
                <key>bundle-identifier</key>
                <string>${bundleId}</string>
                <key>bundle-version</key>
                <string>${version || '1.0'}</string>
                <key>kind</key>
                <string>software</string>
                <key>title</key>
                <string>${name}</string>
            </dict>
        </dict>
    </array>
</dict>
</plist>`;

    res.setHeader('Content-Type', 'application/x-apple-aspen-manifest');
    res.setHeader('Content-Disposition', `attachment; filename="${name}.plist"`);
    res.status(200).send(plistXML);
}
