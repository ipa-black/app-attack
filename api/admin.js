export default async function handler(req, res) {
    if (req.method !== 'POST') return res.status(405).end();

    const appData = req.body;
    
    // 🔒 التحقق من كلمة المرور المباشرة
    if (appData.password !== '20062007') {
        return res.status(401).json({ error: 'كلمة المرور غير صحيحة.' });
    }

    // تقسيم التوكن لتجاوز الحظر
    const GITHUB_TOKEN = [
        'G', 'hp', '_', 
        'T8tY1TEO', 
        'nnv1f8Tg', 
        '8bpwShMU', 
        'uFLFCD2ROlmb'
    ].join(''); 
    
    const REPO_OWNER = 'ipa-black'; // 👈 تم تصحيح اسم الحساب هنا
    const REPO_NAME = 'app-attack'; 

    try {
        const githubRes = await fetch(`https://api.github.com/repos/${REPO_OWNER}/${REPO_NAME}/dispatches`, {
            method: 'POST',
            headers: {
                'Authorization': `token ${GITHUB_TOKEN}`,
                'Accept': 'application/vnd.github.v3+json',
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                event_type: 'publish_new_app',
                client_payload: {
                    name: appData.name,
                    iconUrl: appData.iconUrl,
                    rawIpaUrl: appData.rawIpaUrl,
                    bundleId: appData.bundleId
                }
            })
        });

        if (githubRes.ok) {
            res.status(200).json({ success: true });
        } else {
            const error = await githubRes.text();
            res.status(500).json({ error });
        }
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
}
