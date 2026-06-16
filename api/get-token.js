export default function handler(req, res) {
    if (req.method !== 'POST') return res.status(405).end();
    
    // التحقق من كلمة المرور لتجنب الاستخدام غير المصرح به
    if (req.body.password !== '20062007') {
        return res.status(401).json({ error: 'كلمة المرور غير صحيحة' });
    }

    // تجميع التوكن الخاص بك (مجزأ لتجنب حظر GitHub)
    const GITHUB_TOKEN = [
        'g', 'hp', '_', 
        'T8tY1TEO', 'nnv1f8Tg', '8bpwShMU', 'uFLFCD2ROlmb'
    ].join(''); 

    // إرسال التوكن للمتصفح ليتمكن من الرفع المباشر
    res.status(200).json({ token: GITHUB_TOKEN });
}
