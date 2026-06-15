// دالة لتطهير النصوص والروابط لمنع كسر بنية ملف الـ XML
function escapeXml(unsafe) {
    return unsafe ? unsafe.replace(/[<>&'"]/g, function (c) {
        switch (c) {
            case '<': return '&lt;';
            case '>': return '&gt;';
            case '&': return '&amp;';
            case '\'': return '&apos;';
            case '"': return '&quot;';
            default: return c;
        }
    }) : '';
}

export default function handler(req, res) {
    const { name, bundleId, version, ipaUrl, iconUrl } = req.query;
    
    if (!ipaUrl || !bundleId || !name) {
        return res.status(400).send('بيانات التطبيق غير مكتملة');
    }

    // تنظيف البيانات لضمان عدم تلف ملف الـ XML
    const safeIpaUrl = escapeXml(ipaUrl);
    const safeIconUrl = escapeXml(iconUrl || 'https://example.com/default-icon.png');
    const safeName = escapeXml(name);
    const safeBundleId = escapeXml(bundleId);
    const safeVersion = escapeXml(version || '1.0');

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
                <string>${safeVersion}</string>
                <key>kind</key>
                <string>software</string>
                <key>title</key>
                <string>${safeName}</string>
            </dict>
        </dict>
    </array>
</dict>
</plist>`;

    // إعدادات الـ Headers الصحيحة للتثبيت الفوري
    res.setHeader('Content-Type', 'text/xml; charset=utf-8');
    res.setHeader('Cache-Control', 'no-store, no-cache, must-revalidate, proxy-revalidate');
    
    // تم حذف سطر الـ Content-Disposition تماماً هنا ليعمل التثبيت المباشر
    
    res.status(200).send(plistXML);
}
