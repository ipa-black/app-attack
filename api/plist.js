export default function handler(req, res) {
    const { name, bundleId, version, ipaUrl, iconUrl } = req.query;

    if (!ipaUrl || !bundleId || !name) {
        return res.status(400).send('بيانات التطبيق غير مكتملة');
    }

    // دالة حاسمة لتشفير الرموز الخاصة التي تسبب خلل "تعذر تثبيت التطبيق"
    const escapeXml = (unsafe) => {
        if (!unsafe) return '';
        return unsafe.replace(/[<>&'"]/g, c => {
            switch (c) {
                case '<': return '&lt;';
                case '>': return '&gt;';
                case '&': return '&amp;';
                case '\'': return '&apos;';
                case '"': return '&quot;';
                default: return c;
            }
        });
    };

    const safeName = escapeXml(name);
    const safeBundleId = escapeXml(bundleId);
    const safeIpaUrl = escapeXml(ipaUrl);
    const safeIconUrl = escapeXml(iconUrl || 'https://via.placeholder.com/150');

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
                    <string>${safeIpaUrl}</string>
                </dict>
                <dict>
                    <key>kind</key>
                    <string>display-image</string>
                    <key>needs-shine</key>
                    <false/>
                    <key>url</key>
                    <string>${safeIconUrl}</string>
                </dict>
            </array>
            <key>metadata</key>
            <dict>
                <key>bundle-identifier</key>
                <string>${safeBundleId}</string>
                <key>bundle-version</key>
                <string>${escapeXml(version) || '1.0'}</string>
                <key>kind</key>
                <string>software</string>
                <key>title</key>
                <string>${safeName}</string>
            </dict>
        </dict>
    </array>
</dict>
</plist>`;

    // إرسال الملف بتنسيق text/xml صريح ومفهوم لنظام iOS
    res.setHeader('Content-Type', 'text/xml; charset=utf-8');
    res.status(200).send(plistXML);
}
