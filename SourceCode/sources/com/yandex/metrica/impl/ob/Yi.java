package com.yandex.metrica.impl.ob;

import com.yandex.metrica.impl.ob.If;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class Yi {

    /* renamed from: a  reason: collision with root package name */
    private final C1483da f14319a;

    /* renamed from: b  reason: collision with root package name */
    private final Zi f14320b;

    public Yi() {
        this(new C1483da(), new Zi());
    }

    public void a(Ui ui, JSONObject jSONObject) {
        C1483da c1483da = this.f14319a;
        If.w wVar = new If.w();
        JSONObject optJSONObject = jSONObject.optJSONObject("ui_parsing");
        if (optJSONObject != null) {
            wVar.f13181a = optJSONObject.optInt("too_long_text_bound", wVar.f13181a);
            wVar.f13182b = optJSONObject.optInt("truncated_text_bound", wVar.f13182b);
            wVar.f13183c = optJSONObject.optInt("max_visited_children_in_level", wVar.f13183c);
            wVar.f13184d = Tl.a(Tl.a(optJSONObject, "after_create_timeout", (Long) null), TimeUnit.SECONDS, wVar.f13184d);
            wVar.f13185e = optJSONObject.optBoolean("relative_text_size_calculation", wVar.f13185e);
            wVar.f13186f = optJSONObject.optBoolean("error_reporting", wVar.f13186f);
            wVar.f13187g = optJSONObject.optBoolean("parsing_allowed_by_default", wVar.f13187g);
            wVar.f13188h = this.f14320b.a(optJSONObject.optJSONArray("filters"));
        }
        ui.a(c1483da.toModel(wVar));
    }

    Yi(C1483da c1483da, Zi zi) {
        this.f14319a = c1483da;
        this.f14320b = zi;
    }
}
