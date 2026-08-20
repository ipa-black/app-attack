package com.applovin.impl.sdk.ad;

import android.graphics.Point;
import android.graphics.PointF;
import android.net.Uri;
import android.os.Bundle;
import com.applovin.impl.adview.i;
import com.applovin.impl.adview.s;
import com.applovin.impl.adview.v;
import com.applovin.impl.sdk.aa;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.AppLovinSdkExtraParameterKey;
import com.applovin.impl.sdk.utils.CollectionUtils;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.impl.sdk.utils.h;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iab.omid.library.applovin.adsession.VerificationScriptResource;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.apache.ldap.server.jndi.JavaLdapSupport;
import org.json.JSONObject;
/* loaded from: classes.dex */
public abstract class e extends AppLovinAdImpl {

    /* renamed from: a  reason: collision with root package name */
    private final List<Uri> f5515a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f5516b;

    /* renamed from: c  reason: collision with root package name */
    private final AtomicBoolean f5517c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicReference<com.applovin.impl.sdk.b.c> f5518d;

    /* renamed from: e  reason: collision with root package name */
    private List<com.applovin.impl.sdk.d.a> f5519e;

    /* renamed from: f  reason: collision with root package name */
    private List<com.applovin.impl.sdk.d.a> f5520f;

    /* renamed from: g  reason: collision with root package name */
    private List<com.applovin.impl.sdk.d.a> f5521g;

    /* renamed from: h  reason: collision with root package name */
    private List<com.applovin.impl.sdk.d.a> f5522h;
    private c i;

    /* loaded from: classes.dex */
    public enum a {
        UNSPECIFIED,
        DISMISS,
        DO_NOT_DISMISS
    }

    /* loaded from: classes.dex */
    public enum b {
        DEFAULT,
        ACTIVITY_PORTRAIT,
        ACTIVITY_LANDSCAPE
    }

    /* loaded from: classes.dex */
    public class c {

        /* renamed from: a  reason: collision with root package name */
        public final int f5531a;

        /* renamed from: b  reason: collision with root package name */
        public final int f5532b;

        /* renamed from: c  reason: collision with root package name */
        public final int f5533c;

        /* renamed from: d  reason: collision with root package name */
        public final int f5534d;

        /* renamed from: e  reason: collision with root package name */
        public final int f5535e;

        private c() {
            this.f5531a = AppLovinSdkUtils.dpToPx(e.this.sdk.P(), e.this.Y());
            this.f5532b = AppLovinSdkUtils.dpToPx(e.this.sdk.P(), e.this.Z());
            this.f5533c = AppLovinSdkUtils.dpToPx(e.this.sdk.P(), e.this.aa());
            this.f5534d = AppLovinSdkUtils.dpToPx(e.this.sdk.P(), ((Integer) e.this.sdk.a(com.applovin.impl.sdk.c.b.bO)).intValue());
            this.f5535e = AppLovinSdkUtils.dpToPx(e.this.sdk.P(), ((Integer) e.this.sdk.a(com.applovin.impl.sdk.c.b.bN)).intValue());
        }
    }

    /* loaded from: classes.dex */
    public enum d {
        RESIZE_ASPECT,
        TOP,
        BOTTOM,
        LEFT,
        RIGHT
    }

    public e(JSONObject jSONObject, JSONObject jSONObject2, com.applovin.impl.sdk.ad.b bVar, n nVar) {
        super(jSONObject, jSONObject2, bVar, nVar);
        this.f5515a = CollectionUtils.synchronizedList();
        this.f5516b = new AtomicBoolean();
        this.f5517c = new AtomicBoolean();
        this.f5518d = new AtomicReference<>();
    }

    private i.a b(boolean z) {
        return z ? i.a.WHITE_ON_TRANSPARENT : i.a.WHITE_ON_BLACK;
    }

    private String b(PointF pointF, boolean z) {
        String stringFromAdObject = getStringFromAdObject("click_tracking_url", null);
        Map<String, String> c2 = c(pointF, z);
        if (stringFromAdObject != null) {
            return StringUtils.replace(stringFromAdObject, c2);
        }
        return null;
    }

    private List<Integer> b() {
        return getIntegerListFromAdObject("multi_close_style", null);
    }

    private String c() {
        String stringFromAdObject = getStringFromAdObject("video_end_url", null);
        if (stringFromAdObject != null) {
            return stringFromAdObject.replace(Utils.MACRO_CLCODE, getClCode());
        }
        return null;
    }

    private Map<String, String> c(PointF pointF, boolean z) {
        Point a2 = h.a(this.sdk.P());
        Map<String, String> map = CollectionUtils.map(6);
        map.put(Utils.MACRO_CLCODE, getClCode());
        map.put(Utils.MACRO_CLICK_X, String.valueOf(pointF.x));
        map.put(Utils.MACRO_CLICK_Y, String.valueOf(pointF.y));
        map.put(Utils.MACRO_SCREEN_WIDTH, String.valueOf(a2.x));
        map.put(Utils.MACRO_SCREEN_HEIGHT, String.valueOf(a2.y));
        map.put(Utils.MACRO_IS_VIDEO_CLICK, String.valueOf(z));
        return map;
    }

    public boolean A() {
        return getBooleanFromAdObject("html_resources_cached", false);
    }

    public List<Uri> B() {
        return this.f5515a;
    }

    public String C() {
        JSONObject jsonObjectFromAdObject = getJsonObjectFromAdObject("video_button_properties", null);
        return jsonObjectFromAdObject != null ? JsonUtils.getString(jsonObjectFromAdObject, "video_button_html", "") : "";
    }

    public s D() {
        return new s(getJsonObjectFromAdObject("video_button_properties", null), this.sdk);
    }

    public boolean E() {
        return getBooleanFromAdObject("video_clickable", false);
    }

    public boolean F() {
        return getBooleanFromAdObject("lock_current_orientation", false);
    }

    public a G() {
        String stringFromAdObject = getStringFromAdObject("poststitial_dismiss_type", null);
        if (StringUtils.isValidString(stringFromAdObject)) {
            if ("dismiss".equalsIgnoreCase(stringFromAdObject)) {
                return a.DISMISS;
            }
            if ("no_dismiss".equalsIgnoreCase(stringFromAdObject)) {
                return a.DO_NOT_DISMISS;
            }
        }
        return a.UNSPECIFIED;
    }

    public List<String> H() {
        String stringFromAdObject = getStringFromAdObject("required_html_resources", null);
        return stringFromAdObject != null ? CollectionUtils.explode(stringFromAdObject) : Collections.emptyList();
    }

    public List<String> I() {
        String stringFromAdObject = getStringFromAdObject("resource_cache_prefix", null);
        return stringFromAdObject != null ? CollectionUtils.explode(stringFromAdObject) : this.sdk.b(com.applovin.impl.sdk.c.b.by);
    }

    public boolean J() {
        return getBooleanFromAdObject("sruifwvc", false);
    }

    public boolean K() {
        return getBooleanFromAdObject("require_interaction_for_click", false);
    }

    public String L() {
        return getStringFromAdObject("cache_prefix", null);
    }

    public boolean M() {
        return getBooleanFromAdObject("sscomt", false);
    }

    public String N() {
        return getStringFromFullResponse("event_id", null);
    }

    public boolean O() {
        return getBooleanFromAdObject("progress_bar_enabled", false);
    }

    public int P() {
        return getColorFromAdObject("progress_bar_color", -922746881);
    }

    public int Q() {
        int videoCompletionPercent;
        synchronized (this.adObjectLock) {
            videoCompletionPercent = Utils.getVideoCompletionPercent(this.adObject);
        }
        return videoCompletionPercent;
    }

    public int R() {
        synchronized (this.adObjectLock) {
            int i = JsonUtils.getInt(this.adObject, "graphic_completion_percent", -1);
            if (i < 0 || i > 100) {
                return 90;
            }
            return i;
        }
    }

    public int S() {
        return getIntFromAdObject("poststitial_shown_forward_delay_millis", -1);
    }

    public int T() {
        return getIntFromAdObject("poststitial_dismiss_forward_delay_millis", -1);
    }

    public boolean U() {
        return getBooleanFromAdObject("should_apply_mute_setting_to_poststitial", false);
    }

    public boolean V() {
        return getBooleanFromAdObject("should_forward_close_button_tapped_to_poststitial", false);
    }

    public boolean W() {
        return getBooleanFromAdObject("forward_lifecycle_events_to_webview", false);
    }

    public c X() {
        if (this.i == null) {
            this.i = new c();
        }
        return this.i;
    }

    public int Y() {
        return getIntFromAdObject("close_button_size", ((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.cr)).intValue());
    }

    public int Z() {
        return getIntFromAdObject("close_button_top_margin", ((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.cs)).intValue());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public i.a a(int i) {
        return i == 1 ? i.a.WHITE_ON_TRANSPARENT : i == 2 ? i.a.INVISIBLE : i == 3 ? i.a.TRANSPARENT_SKIP : i.a.WHITE_ON_BLACK;
    }

    public List<com.applovin.impl.sdk.d.a> a(PointF pointF) {
        List<com.applovin.impl.sdk.d.a> postbacks;
        synchronized (this.adObjectLock) {
            postbacks = Utils.getPostbacks("video_click_tracking_urls", this.adObject, c(pointF, true), null, au(), z(), this.sdk);
        }
        return postbacks.isEmpty() ? a(pointF, true) : postbacks;
    }

    public List<com.applovin.impl.sdk.d.a> a(PointF pointF, boolean z) {
        List<com.applovin.impl.sdk.d.a> postbacks;
        synchronized (this.adObjectLock) {
            postbacks = Utils.getPostbacks("click_tracking_urls", this.adObject, c(pointF, z), b(pointF, z), au(), z(), this.sdk);
        }
        return postbacks;
    }

    public abstract void a();

    public void a(com.applovin.impl.sdk.b.c cVar) {
        this.f5518d.set(cVar);
    }

    public void a(boolean z) {
        try {
            synchronized (this.adObjectLock) {
                this.adObject.put("html_resources_cached", z);
            }
        } catch (Throwable unused) {
        }
    }

    public List<String> aA() {
        return CollectionUtils.explode(getStringFromAdObject("wls", ""));
    }

    public List<String> aB() {
        return CollectionUtils.explode(getStringFromAdObject("wlh", null));
    }

    public Uri aC() {
        String stringFromAdObject = getStringFromAdObject("mute_image", null);
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Uri.parse(stringFromAdObject);
        }
        return null;
    }

    public Uri aD() {
        String stringFromAdObject = getStringFromAdObject("unmute_image", "");
        if (StringUtils.isValidString(stringFromAdObject)) {
            return Uri.parse(stringFromAdObject);
        }
        return null;
    }

    public boolean aE() {
        return this.f5517c.get();
    }

    public void aF() {
        this.f5517c.set(true);
    }

    public com.applovin.impl.sdk.b.c aG() {
        return this.f5518d.getAndSet(null);
    }

    public boolean aH() {
        String str = this.sdk.q().getExtraParameters().get(AppLovinSdkExtraParameterKey.SHOULD_USE_EXOPLAYER);
        return StringUtils.isValidString(str) ? Boolean.parseBoolean(str) : getBooleanFromAdObject("suep", false);
    }

    public boolean aI() {
        return getBooleanFromAdObject("rwvbv", false);
    }

    public boolean aJ() {
        return getBooleanFromAdObject("upiosp", false);
    }

    public boolean aK() {
        return getBooleanFromAdObject("web_video", false);
    }

    public d aL() {
        String stringFromAdObject = getStringFromAdObject("video_gravity", null);
        return JavaLdapSupport.TOP_ATTR.equals(stringFromAdObject) ? d.TOP : "bottom".equals(stringFromAdObject) ? d.BOTTOM : TtmlNode.LEFT.equals(stringFromAdObject) ? d.LEFT : TtmlNode.RIGHT.equals(stringFromAdObject) ? d.RIGHT : d.RESIZE_ASPECT;
    }

    public int aa() {
        return getIntFromAdObject("close_button_horizontal_margin", ((Integer) this.sdk.a(com.applovin.impl.sdk.c.b.cq)).intValue());
    }

    public boolean ab() {
        return getBooleanFromAdObject("lhs_close_button", (Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.cp));
    }

    public boolean ac() {
        return getBooleanFromAdObject("lhs_skip_button", (Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.cw));
    }

    public long ad() {
        long longFromAdObject = getLongFromAdObject("report_reward_duration", -1L);
        if (longFromAdObject >= 0) {
            return TimeUnit.SECONDS.toMillis(longFromAdObject);
        }
        return -1L;
    }

    public int ae() {
        return getIntFromAdObject("report_reward_percent", -1);
    }

    public boolean af() {
        return getBooleanFromAdObject("report_reward_percent_include_close_delay", true);
    }

    public AtomicBoolean ag() {
        return this.f5516b;
    }

    public boolean ah() {
        return getBooleanFromAdObject("show_nia", false);
    }

    public String ai() {
        return getStringFromAdObject("nia_title", "");
    }

    public String aj() {
        return getStringFromAdObject("nia_message", "");
    }

    public String ak() {
        return getStringFromAdObject("nia_button_title", "");
    }

    public boolean al() {
        return getBooleanFromAdObject("avoms", false);
    }

    public boolean am() {
        return getBooleanFromAdObject("show_rewarded_interstitial_overlay_alert", Boolean.valueOf(AppLovinAdType.AUTO_INCENTIVIZED == getType()));
    }

    public String an() {
        return getStringFromAdObject("text_rewarded_inter_alert_title", "Watch a video to earn a reward!");
    }

    public String ao() {
        return getStringFromAdObject("text_rewarded_inter_alert_body", "");
    }

    public String ap() {
        return getStringFromAdObject("text_rewarded_inter_alert_ok_action", "OK!");
    }

    public List<com.applovin.impl.sdk.d.a> aq() {
        List<com.applovin.impl.sdk.d.a> postbacks;
        List<com.applovin.impl.sdk.d.a> list = this.f5519e;
        if (list != null) {
            return list;
        }
        synchronized (this.adObjectLock) {
            postbacks = Utils.getPostbacks("video_end_urls", this.adObject, getClCode(), c(), this.sdk);
            this.f5519e = postbacks;
        }
        return postbacks;
    }

    public List<com.applovin.impl.sdk.d.a> ar() {
        List<com.applovin.impl.sdk.d.a> postbacks;
        List<com.applovin.impl.sdk.d.a> list = this.f5520f;
        if (list != null) {
            return list;
        }
        synchronized (this.adObjectLock) {
            postbacks = Utils.getPostbacks("ad_closed_urls", this.adObject, getClCode(), (String) null, this.sdk);
            this.f5520f = postbacks;
        }
        return postbacks;
    }

    public List<com.applovin.impl.sdk.d.a> as() {
        List<com.applovin.impl.sdk.d.a> postbacks;
        List<com.applovin.impl.sdk.d.a> list = this.f5521g;
        if (list != null) {
            return list;
        }
        synchronized (this.adObjectLock) {
            postbacks = Utils.getPostbacks("app_killed_urls", this.adObject, getClCode(), (String) null, this.sdk);
            this.f5521g = postbacks;
        }
        return postbacks;
    }

    public List<com.applovin.impl.sdk.d.a> at() {
        List<com.applovin.impl.sdk.d.a> postbacks;
        List<com.applovin.impl.sdk.d.a> list = this.f5522h;
        if (list != null) {
            return list;
        }
        synchronized (this.adObjectLock) {
            postbacks = Utils.getPostbacks("imp_urls", this.adObject, getClCode(), null, null, au(), z(), this.sdk);
            this.f5522h = postbacks;
        }
        return postbacks;
    }

    public Map<String, String> au() {
        Map<String, String> map = CollectionUtils.map();
        if (getBooleanFromAdObject("use_webview_ua_for_postbacks", false)) {
            map.put("User-Agent", aa.a());
        }
        return map;
    }

    public boolean av() {
        return getBooleanFromAdObject("playback_requires_user_action", true);
    }

    public String aw() {
        String stringFromAdObject = getStringFromAdObject("base_url", "/");
        if ("null".equalsIgnoreCase(stringFromAdObject)) {
            return null;
        }
        return stringFromAdObject;
    }

    public boolean ax() {
        return getBooleanFromAdObject("web_contents_debugging_enabled", false);
    }

    public v ay() {
        JSONObject jsonObjectFromAdObject = getJsonObjectFromAdObject("web_view_settings", null);
        if (jsonObjectFromAdObject != null) {
            return new v(jsonObjectFromAdObject);
        }
        return null;
    }

    public int az() {
        return getIntFromAdObject("whalt", Utils.isBML(getSize()) ? 1 : ((Boolean) this.sdk.a(com.applovin.impl.sdk.c.b.eW)).booleanValue() ? 0 : -1);
    }

    public void b(Uri uri) {
        this.f5515a.add(uri);
    }

    public void c(Uri uri) {
        synchronized (this.adObjectLock) {
            JsonUtils.putObject(this.adObject, "mute_image", uri);
        }
    }

    public abstract String d();

    public void d(Uri uri) {
        synchronized (this.adObjectLock) {
            JsonUtils.putObject(this.adObject, "unmute_image", uri);
        }
    }

    public boolean f() {
        this.sdk.D();
        if (com.applovin.impl.sdk.v.a()) {
            this.sdk.D().e("DirectAd", "Attempting to invoke isVideoStream() from base ad class");
            return false;
        }
        return false;
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    public Bundle getDirectDownloadParameters() {
        JSONObject jsonObjectFromAdObject = getJsonObjectFromAdObject("ah_parameters", null);
        if (jsonObjectFromAdObject != null) {
            return JsonUtils.toBundle(jsonObjectFromAdObject);
        }
        return null;
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    public String getDirectDownloadToken() {
        return getStringFromAdObject("ah_dd_token", null);
    }

    @Override // com.applovin.impl.sdk.a.a
    public String getOpenMeasurementContentUrl() {
        return getStringFromAdObject("omid_content_url", null);
    }

    @Override // com.applovin.impl.sdk.a.a
    public String getOpenMeasurementCustomReferenceData() {
        return getStringFromAdObject("omid_custom_ref_data", "");
    }

    @Override // com.applovin.impl.sdk.a.a
    public List<VerificationScriptResource> getOpenMeasurementVerificationScriptResources() {
        return Collections.emptyList();
    }

    public Uri h() {
        this.sdk.D();
        if (com.applovin.impl.sdk.v.a()) {
            this.sdk.D().e("DirectAd", "Attempting to invoke getVideoUri() from base ad class");
            return null;
        }
        return null;
    }

    @Override // com.applovin.impl.sdk.array.ArrayDirectDownloadAd
    public boolean isDirectDownloadEnabled() {
        return StringUtils.isValidString(getDirectDownloadToken());
    }

    @Override // com.applovin.impl.sdk.a.a
    public abstract boolean isOpenMeasurementEnabled();

    public Uri j() {
        this.sdk.D();
        if (com.applovin.impl.sdk.v.a()) {
            this.sdk.D().e("DirectAd", "Attempting to invoke getClickDestinationUri() from base ad class");
            return null;
        }
        return null;
    }

    public Uri k() {
        this.sdk.D();
        if (com.applovin.impl.sdk.v.a()) {
            this.sdk.D().e("DirectAd", "Attempting to invoke getVideoClickDestinationUri() from base ad class");
            return null;
        }
        return null;
    }

    public abstract com.applovin.impl.sdk.a.b o();

    public b p() {
        String upperCase = getStringFromAdObject("ad_target", b.DEFAULT.toString()).toUpperCase(Locale.ENGLISH);
        return "ACTIVITY_PORTRAIT".equalsIgnoreCase(upperCase) ? b.ACTIVITY_PORTRAIT : "ACTIVITY_LANDSCAPE".equalsIgnoreCase(upperCase) ? b.ACTIVITY_LANDSCAPE : b.DEFAULT;
    }

    public boolean q() {
        return getBooleanFromAdObject("iopmsdc", false);
    }

    public long r() {
        return getLongFromAdObject("close_delay", 0L);
    }

    public long s() {
        return TimeUnit.SECONDS.toMillis(getLongFromAdObject("close_delay_max_buffering_time_seconds", 5L));
    }

    public long t() {
        List<Integer> u = u();
        long longFromAdObject = getLongFromAdObject("close_delay_graphic", (u == null || u.size() <= 0) ? 0L : u.get(0).intValue());
        if (longFromAdObject == -1 || longFromAdObject == -2) {
            return 0L;
        }
        return longFromAdObject;
    }

    public List<Integer> u() {
        return getIntegerListFromAdObject("multi_close_delay_graphic", null);
    }

    public i.a v() {
        List<Integer> b2 = b();
        int intFromAdObject = getIntFromAdObject("close_style", (b2 == null || b2.size() <= 0) ? -1 : b2.get(0).intValue());
        return intFromAdObject == -1 ? b(hasVideoUrl()) : a(intFromAdObject);
    }

    public List<i.a> w() {
        List<Integer> b2 = b();
        if (b2 != null) {
            ArrayList arrayList = new ArrayList(b2.size());
            for (Integer num : b2) {
                arrayList.add(a(num.intValue()));
            }
            return arrayList;
        }
        return null;
    }

    public i.a x() {
        int intFromAdObject = getIntFromAdObject("skip_style", -1);
        return intFromAdObject == -1 ? v() : a(intFromAdObject);
    }

    public boolean y() {
        return getBooleanFromAdObject("dismiss_on_skip", false);
    }

    public boolean z() {
        return getBooleanFromAdObject("fire_postbacks_from_webview", false);
    }
}
