package com.yandex.metrica.impl.ob;

import java.util.HashMap;
import org.json.JSONException;
/* renamed from: com.yandex.metrica.impl.ob.am  reason: case insensitive filesystem */
/* loaded from: classes5.dex */
public class C1420am extends HashMap<String, String> {

    /* renamed from: a  reason: collision with root package name */
    private int f14423a;

    public C1420am() {
        this.f14423a = 0;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    /* renamed from: a */
    public String put(String str, String str2) {
        if (!containsKey(str)) {
            if (str2 != null) {
                this.f14423a += str.length() + str2.length();
                return (String) super.put(str, str2);
            }
            return null;
        } else if (str2 == null) {
            return remove(str);
        } else {
            String str3 = get(str);
            this.f14423a += str2.length() - (str3 == null ? 0 : str3.length());
            return (String) super.put(str, str2);
        }
    }

    public C1420am(String str) throws JSONException {
        super(Tl.e(str));
        this.f14423a = 0;
        for (String str2 : keySet()) {
            String str3 = (String) get(str2);
            this.f14423a += str2.length() + (str3 == null ? 0 : str3.length());
        }
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    /* renamed from: a */
    public String remove(Object obj) {
        if (containsKey(obj)) {
            String str = get(obj);
            this.f14423a -= ((String) obj).length() + (str == null ? 0 : str.length());
        }
        return (String) super.remove(obj);
    }

    public int a() {
        return this.f14423a;
    }
}
