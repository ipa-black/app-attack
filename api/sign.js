// api/sign.js
export default async function handler(req, res) {
    if (req.method !== 'POST') return res.status(405).send('Method Not Allowed');

    const part1 = "ghp_";
    const part2 = "XyZ123456789"; 
    const part3 = "AbCdEfGhIjKlMn";
    const GITHUB_TOKEN = part1 + part2 + part3;

    const { ipa_url, category } = req.body;

    try {
        const response = await fetch(`https://api.github.com/repos/api-black/app-attack/actions/workflows/sign.yml/dispatches`, {
            method: 'POST',
            headers: {
                'Authorization': `token ${GITHUB_TOKEN}`,
                'Accept': 'application/vnd.github.v3+json',
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ 
                ref: 'main', 
                inputs: { ipa_url, category: category || "التطبيقات الأساسية" } 
            })
        });
        
        if (!response.ok) throw new Error('GitHub API Error');
        res.status(200).json({ success: true });
    } catch (error) {
        res.status(500).json({ error: error.message });
    }
}
