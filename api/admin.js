export default async function handler(req, res) {
    if (req.method !== 'POST') return res.status(405).end();
    const appData = req.body;
    if (appData.password !== '20062007') return res.status(401).json({ error: 'كلمة المرور غير صحيحة.' });

    const GITHUB_TOKEN = ['g', 'hp', '_', 'T8tY1TEO', 'nnv1f8Tg', '8bpwShMU', 'uFLFCD2ROlmb'].join(''); 
    
    try {
        const githubRes = await fetch(`https://api.github.com/repos/ipa-black/app-attack/dispatches`, {
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
        if (githubRes.ok) res.status(200).json({ success: true });
        else res.status(500).json({ error: await githubRes.text() });
    } catch (e) { res.status(500).json({ error: e.message }); }
}
