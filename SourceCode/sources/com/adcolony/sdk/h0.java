package com.adcolony.sdk;

import com.adcolony.sdk.e0;
import org.json.JSONException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class h0 {

    /* renamed from: a  reason: collision with root package name */
    private String f342a;

    /* renamed from: b  reason: collision with root package name */
    private f1 f343b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(f1 f1Var) {
        if (f1Var == null) {
            try {
                f1Var = new f1();
            } catch (JSONException e2) {
                new e0.a().a("JSON Error in ADCMessage constructor: ").a(e2.toString()).a(e0.i);
                return;
            }
        }
        this.f343b = f1Var;
        this.f342a = f1Var.e("m_type");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0 a(f1 f1Var) {
        try {
            h0 h0Var = new h0("reply", this.f343b.b("m_origin"), f1Var);
            h0Var.f343b.b("m_id", this.f343b.b("m_id"));
            return h0Var;
        } catch (JSONException e2) {
            new e0.a().a("JSON error in ADCMessage's createReply(): ").a(e2.toString()).a(e0.i);
            return new h0("JSONException", 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(f1 f1Var) {
        if (f1Var == null) {
            f1Var = new f1();
        }
        this.f343b = f1Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        a.a(this.f342a, this.f343b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String b() {
        return this.f342a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f1 a() {
        return this.f343b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(String str, int i) {
        try {
            this.f342a = str;
            f1 f1Var = new f1();
            this.f343b = f1Var;
            f1Var.b("m_target", i);
        } catch (JSONException e2) {
            new e0.a().a("JSON Error in ADCMessage constructor: ").a(e2.toString()).a(e0.i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h0(String str, int i, f1 f1Var) {
        try {
            this.f342a = str;
            f1Var = f1Var == null ? new f1() : f1Var;
            this.f343b = f1Var;
            f1Var.b("m_target", i);
        } catch (JSONException e2) {
            new e0.a().a("JSON Error in ADCMessage constructor: ").a(e2.toString()).a(e0.i);
        }
    }
}
