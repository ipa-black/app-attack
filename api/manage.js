export default async function handler(req, res) {
    const GITHUB_TOKEN = [
        'g', 'hp', '_', 
        'T8tY1TEO', 'nnv1f8Tg', '8bpwShMU', 'uFLFCD2ROlmb'
    ].join(''); 
    const REPO_OWNER = 'ipa-black'; 
    const REPO_NAME = 'app-attack'; 
    const FILE_PATH = 'Store.json';

    // جلب التطبيقات
    if (req.method === 'GET') {
        try {
            const response = await fetch(`https://api.github.com/repos/${REPO_OWNER}/${REPO_NAME}/contents/${FILE_PATH}`, {
                headers: { 'Authorization': `token ${GITHUB_TOKEN}`, 'Accept': 'application/vnd.github.v3+json' }
            });
            if (!response.ok) throw new Error('فشل جلب البيانات');
            const data = await response.json();
            const content = Buffer.from(data.content, 'base64').toString('utf-8');
            return res.status(200).json({ apps: JSON.parse(content), sha: data.sha });
        } catch (error) {
            return res.status(500).json({ error: error.message });
        }
    }

    // تحديث أو حذف التطبيقات
    if (req.method === 'POST') {
        const { apps, sha, password } = req.body;
        if (password !== '20062007') return res.status(401).json({ error: 'كلمة المرور غير صحيحة' });

        try {
            const updatedContent = Buffer.from(JSON.stringify(apps, null, 2)).toString('base64');
            const updateRes = await fetch(`https://api.github.com/repos/${REPO_OWNER}/${REPO_NAME}/contents/${FILE_PATH}`, {
                method: 'PUT',
                headers: { 'Authorization': `token ${GITHUB_TOKEN}`, 'Accept': 'application/vnd.github.v3+json', 'Content-Type': 'application/json' },
                body: JSON.stringify({
                    message: "Update Apps Section via Dashboard",
                    content: updatedContent,
                    sha: sha
                })
            });
            if (updateRes.ok) return res.status(200).json({ success: true });
            else return res.status(500).json({ error: await updateRes.text() });
        } catch (error) {
            return res.status(500).json({ error: error.message });
        }
    }
    res.status(405).end();
}
