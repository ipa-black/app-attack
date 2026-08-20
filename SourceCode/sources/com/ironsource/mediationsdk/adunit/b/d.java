package com.ironsource.mediationsdk.adunit.b;

import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public g f10980a;

    /* renamed from: b  reason: collision with root package name */
    public h f10981b;

    /* renamed from: c  reason: collision with root package name */
    public e f10982c;

    /* renamed from: d  reason: collision with root package name */
    public com.ironsource.mediationsdk.adunit.b.a f10983d;

    /* renamed from: e  reason: collision with root package name */
    public i f10984e;

    /* renamed from: f  reason: collision with root package name */
    private final int f10985f = -1;

    /* renamed from: g  reason: collision with root package name */
    private IronSource.AD_UNIT f10986g;

    /* renamed from: h  reason: collision with root package name */
    private b f10987h;
    private c i;
    private com.ironsource.mediationsdk.a.b j;
    private Map<com.ironsource.mediationsdk.adunit.b.b, a> k;
    private Map<com.ironsource.mediationsdk.adunit.b.b, a> l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        private int f10988a;

        /* renamed from: b  reason: collision with root package name */
        private int f10989b;

        public a(int i, int i2) {
            this.f10988a = i;
            this.f10989b = i2;
        }

        final int a(b bVar) {
            return b.MEDIATION.equals(bVar) ? this.f10988a : this.f10989b;
        }
    }

    /* loaded from: classes3.dex */
    public enum b {
        MEDIATION,
        PROVIDER
    }

    public d(IronSource.AD_UNIT ad_unit, b bVar, c cVar) {
        this.f10986g = ad_unit;
        this.f10987h = bVar;
        this.i = cVar;
        this.j = (ad_unit.equals(IronSource.AD_UNIT.REWARDED_VIDEO) || ad_unit.equals(IronSource.AD_UNIT.OFFERWALL)) ? com.ironsource.mediationsdk.a.h.e() : com.ironsource.mediationsdk.a.d.e();
        HashMap hashMap = new HashMap();
        this.k = hashMap;
        hashMap.put(com.ironsource.mediationsdk.adunit.b.b.INIT_STARTED, new a(IronSourceConstants.IS_MANAGER_INIT_STARTED, -1));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.INIT_ENDED, new a(IronSourceConstants.IS_MANAGER_INIT_ENDED, -1));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.SESSION_CAPPED, new a(-1, IronSourceConstants.IS_CAP_SESSION));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.PLACEMENT_CAPPED, new a(IronSourceConstants.IS_CAP_PLACEMENT, -1));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.AUCTION_REQUEST, new a(2000, -1));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.AUCTION_SUCCESS, new a(IronSourceConstants.IS_AUCTION_SUCCESS, -1));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.AUCTION_FAILED, new a(IronSourceConstants.IS_AUCTION_FAILED, -1));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.AUCTION_REQUEST_WATERFALL, new a(IronSourceConstants.IS_AUCTION_REQUEST_WATERFALL, -1));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.AUCTION_RESULT_WATERFALL, new a(IronSourceConstants.IS_RESULT_WATERFALL, -1));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.INIT_SUCCESS, new a(-1, -1));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.INIT_FAILED, new a(-1, -1));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.SHOW_AD_SUCCESS, new a(-1, IronSourceConstants.IS_INSTANCE_SHOW_SUCCESS));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.AD_OPENED, new a(-1, 2005));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.AD_CLOSED, new a(-1, IronSourceConstants.IS_INSTANCE_CLOSED));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.AD_CLICKED, new a(-1, 2006));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.LOAD_AD, new a(2001, 2002));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.LOAD_AD_SUCCESS, new a(2004, 2003));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.LOAD_AD_FAILED, new a(IronSourceConstants.IS_CALLBACK_LOAD_ERROR, IronSourceConstants.IS_INSTANCE_LOAD_FAILED));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.LOAD_AD_NO_FILL, new a(-1, IronSourceConstants.IS_INSTANCE_LOAD_NO_FILL));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.SHOW_AD, new a(2100, IronSourceConstants.IS_INSTANCE_SHOW));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.SHOW_AD_SUCCESS, new a(-1, IronSourceConstants.IS_INSTANCE_SHOW_SUCCESS));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.SHOW_AD_FAILED, new a(IronSourceConstants.IS_CALLBACK_AD_SHOW_ERROR, IronSourceConstants.IS_INSTANCE_SHOW_FAILED));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.AD_UNIT_CAPPED, new a(IronSourceConstants.IS_AD_UNIT_CAPPED, -1));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_NETWORK_ADAPTER_NOT_AVAILABLE, new a(IronSourceConstants.TROUBLESHOOTING_IS_NETWORK_ADAPTER_NOT_AVAILABLE, IronSourceConstants.TROUBLESHOOTING_IS_NETWORK_ADAPTER_NOT_AVAILABLE));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_AD_ADAPTER_NOT_AVAILABLE, new a(IronSourceConstants.TROUBLESHOOTING_IS_AD_ADAPTER_NOT_AVAILABLE, IronSourceConstants.TROUBLESHOOTING_IS_AD_ADAPTER_NOT_AVAILABLE));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_PROVIDER_SETTINGS_MISSING, new a(IronSourceConstants.TROUBLESHOOTING_IS_PROVIDER_SETTINGS_MISSING, IronSourceConstants.TROUBLESHOOTING_IS_PROVIDER_SETTINGS_MISSING));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_BIDDING_DATA_MISSING, new a(IronSourceConstants.TROUBLESHOOTING_IS_BIDDING_DATA_MISSING, IronSourceConstants.TROUBLESHOOTING_IS_BIDDING_DATA_MISSING));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_UNEXPECTED_INIT_SUCCESS, new a(IronSourceConstants.TROUBLESHOOTING_IS_UNEXPECTED_INIT_SUCCESS, IronSourceConstants.TROUBLESHOOTING_IS_UNEXPECTED_INIT_SUCCESS));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_UNEXPECTED_INIT_FAILED, new a(IronSourceConstants.TROUBLESHOOTING_IS_UNEXPECTED_INIT_FAILED, IronSourceConstants.TROUBLESHOOTING_IS_UNEXPECTED_INIT_FAILED));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_UNEXPECTED_AUCTION_SUCCESS, new a(IronSourceConstants.TROUBLESHOOTING_IS_UNEXPECTED_AUCTION_SUCCESS, IronSourceConstants.TROUBLESHOOTING_IS_UNEXPECTED_AUCTION_SUCCESS));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_UNEXPECTED_AUCTION_FAILED, new a(IronSourceConstants.TROUBLESHOOTING_IS_UNEXPECTED_AUCTION_FAILED, IronSourceConstants.TROUBLESHOOTING_IS_UNEXPECTED_AUCTION_FAILED));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_UNEXPECTED_LOAD_SUCCESS, new a(IronSourceConstants.TROUBLESHOOTING_IS_UNEXPECTED_LOAD_SUCCESS, IronSourceConstants.TROUBLESHOOTING_IS_UNEXPECTED_LOAD_SUCCESS));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_UNEXPECTED_LOAD_FAILED, new a(IronSourceConstants.TROUBLESHOOTING_IS_UNEXPECTED_LOAD_FAILED, IronSourceConstants.TROUBLESHOOTING_IS_UNEXPECTED_LOAD_FAILED));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_UNEXPECTED_TIMEOUT, new a(IronSourceConstants.TROUBLESHOOTING_IS_UNEXPECTED_TIMEOUT, IronSourceConstants.TROUBLESHOOTING_IS_UNEXPECTED_TIMEOUT));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_INTERNAL_ERROR, new a(IronSourceConstants.TROUBLESHOOTING_IS_INTERNAL_ERROR, IronSourceConstants.TROUBLESHOOTING_IS_INTERNAL_ERROR));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_ADAPTER_BRIDGE_INTERNAL_ERROR, new a(IronSourceConstants.TROUBLESHOOTING_ADAPTER_BRIDGE_INTERNAL_ERROR, IronSourceConstants.TROUBLESHOOTING_ADAPTER_BRIDGE_INTERNAL_ERROR));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_ADAPTER_REPOSITORY_INTERNAL_ERROR, new a(IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_AUCTION_SUCCESSFUL_RECOVERY_ERROR, new a(IronSourceConstants.TROUBLESHOOTING_AUCTION_SUCCESSFUL_RECOVERY_ERROR, IronSourceConstants.TROUBLESHOOTING_AUCTION_SUCCESSFUL_RECOVERY_ERROR));
        this.k.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_NOTIFICATION_ERROR, new a(IronSourceConstants.TROUBLESHOOTING_IS_NOTIFICATIONS_ERROR, -1));
        HashMap hashMap2 = new HashMap();
        this.l = hashMap2;
        hashMap2.put(com.ironsource.mediationsdk.adunit.b.b.INIT_STARTED, new a(IronSourceConstants.RV_MANAGER_INIT_STARTED, -1));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.INIT_ENDED, new a(IronSourceConstants.RV_MANAGER_INIT_ENDED, -1));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.SESSION_CAPPED, new a(-1, IronSourceConstants.RV_CAP_SESSION));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.PLACEMENT_CAPPED, new a(IronSourceConstants.RV_CAP_PLACEMENT, -1));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.AUCTION_REQUEST, new a(IronSourceConstants.RV_AUCTION_REQUEST, -1));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.AUCTION_SUCCESS, new a(IronSourceConstants.RV_AUCTION_SUCCESS, -1));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.AUCTION_FAILED, new a(IronSourceConstants.RV_AUCTION_FAILED, -1));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.AUCTION_REQUEST_WATERFALL, new a(IronSourceConstants.RV_AUCTION_REQUEST_WATERFALL, -1));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.AUCTION_RESULT_WATERFALL, new a(IronSourceConstants.RV_AUCTION_RESPONSE_WATERFALL, -1));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.INIT_SUCCESS, new a(-1, -1));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.INIT_FAILED, new a(-1, -1));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.AD_VISIBLE, new a(-1, IronSourceConstants.RV_INSTANCE_VISIBLE));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.AD_OPENED, new a(-1, 1005));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.AD_CLOSED, new a(-1, IronSourceConstants.RV_INSTANCE_CLOSED));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.AD_STARTED, new a(-1, IronSourceConstants.RV_INSTANCE_STARTED));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.AD_ENDED, new a(-1, IronSourceConstants.RV_INSTANCE_ENDED));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.AD_CLICKED, new a(-1, 1006));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.AD_REWARDED, new a(-1, 1010));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.AD_AVAILABILITY_CHANGED_TRUE, new a(IronSourceConstants.RV_CALLBACK_AVAILABILITY_TRUE, IronSourceConstants.RV_INSTANCE_AVAILABILITY_TRUE));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.AD_AVAILABILITY_CHANGED_FALSE, new a(IronSourceConstants.RV_CALLBACK_AVAILABILITY_FALSE, IronSourceConstants.RV_INSTANCE_AVAILABILITY_FALSE));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.LOAD_AD, new a(1000, 1001));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.LOAD_AD_SUCCESS, new a(1003, 1002));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.LOAD_AD_FAILED, new a(IronSourceConstants.RV_MEDIATION_LOAD_ERROR, IronSourceConstants.RV_INSTANCE_LOAD_FAILED));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.LOAD_AD_FAILED_WITH_REASON, new a(-1, IronSourceConstants.RV_INSTANCE_LOAD_FAILED_REASON));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.LOAD_AD_NO_FILL, new a(-1, IronSourceConstants.RV_INSTANCE_LOAD_NO_FILL));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.SHOW_AD, new a(IronSourceConstants.RV_API_SHOW_CALLED, IronSourceConstants.RV_INSTANCE_SHOW));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.SHOW_AD_CHANCE, new a(-1, IronSourceConstants.RV_INSTANCE_SHOW_CHANCE));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.SHOW_AD_FAILED, new a(IronSourceConstants.RV_CALLBACK_SHOW_FAILED, IronSourceConstants.RV_INSTANCE_SHOW_FAILED));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.AD_UNIT_CAPPED, new a(IronSourceConstants.RV_AD_UNIT_CAPPED, -1));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_NETWORK_ADAPTER_NOT_AVAILABLE, new a(IronSourceConstants.TROUBLESHOOTING_RV_NETWORK_ADAPTER_NOT_AVAILABLE, IronSourceConstants.TROUBLESHOOTING_RV_NETWORK_ADAPTER_NOT_AVAILABLE));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_AD_ADAPTER_NOT_AVAILABLE, new a(IronSourceConstants.TROUBLESHOOTING_RV_AD_ADAPTER_NOT_AVAILABLE, IronSourceConstants.TROUBLESHOOTING_RV_AD_ADAPTER_NOT_AVAILABLE));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_PROVIDER_SETTINGS_MISSING, new a(IronSourceConstants.TROUBLESHOOTING_RV_PROVIDER_SETTINGS_MISSING, IronSourceConstants.TROUBLESHOOTING_RV_PROVIDER_SETTINGS_MISSING));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_BIDDING_DATA_MISSING, new a(IronSourceConstants.TROUBLESHOOTING_RV_BIDDING_DATA_MISSING, IronSourceConstants.TROUBLESHOOTING_RV_BIDDING_DATA_MISSING));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_UNEXPECTED_INIT_SUCCESS, new a(IronSourceConstants.TROUBLESHOOTING_RV_UNEXPECTED_INIT_SUCCESS, IronSourceConstants.TROUBLESHOOTING_RV_UNEXPECTED_INIT_SUCCESS));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_UNEXPECTED_INIT_FAILED, new a(IronSourceConstants.TROUBLESHOOTING_RV_UNEXPECTED_INIT_FAILED, IronSourceConstants.TROUBLESHOOTING_RV_UNEXPECTED_INIT_FAILED));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_UNEXPECTED_AUCTION_SUCCESS, new a(IronSourceConstants.TROUBLESHOOTING_RV_UNEXPECTED_AUCTION_SUCCESS, IronSourceConstants.TROUBLESHOOTING_RV_UNEXPECTED_AUCTION_SUCCESS));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_UNEXPECTED_AUCTION_FAILED, new a(IronSourceConstants.TROUBLESHOOTING_RV_UNEXPECTED_AUCTION_FAILED, IronSourceConstants.TROUBLESHOOTING_RV_UNEXPECTED_AUCTION_FAILED));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_UNEXPECTED_LOAD_SUCCESS, new a(IronSourceConstants.TROUBLESHOOTING_RV_UNEXPECTED_LOAD_SUCCESS, IronSourceConstants.TROUBLESHOOTING_RV_UNEXPECTED_LOAD_SUCCESS));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_UNEXPECTED_LOAD_FAILED, new a(IronSourceConstants.TROUBLESHOOTING_RV_UNEXPECTED_LOAD_FAILED, IronSourceConstants.TROUBLESHOOTING_RV_UNEXPECTED_LOAD_FAILED));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_UNEXPECTED_TIMEOUT, new a(IronSourceConstants.TROUBLESHOOTING_RV_UNEXPECTED_TIMEOUT, IronSourceConstants.TROUBLESHOOTING_RV_UNEXPECTED_TIMEOUT));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_LOAD_FAILED, new a(IronSourceConstants.TROUBLESHOOTING_RV_LOAD_FAILED, IronSourceConstants.TROUBLESHOOTING_RV_LOAD_FAILED));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_INTERNAL_ERROR, new a(IronSourceConstants.TROUBLESHOOTING_RV_INTERNAL_ERROR, IronSourceConstants.TROUBLESHOOTING_RV_INTERNAL_ERROR));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_ADAPTER_BRIDGE_INTERNAL_ERROR, new a(IronSourceConstants.TROUBLESHOOTING_ADAPTER_BRIDGE_INTERNAL_ERROR, IronSourceConstants.TROUBLESHOOTING_ADAPTER_BRIDGE_INTERNAL_ERROR));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_ADAPTER_REPOSITORY_INTERNAL_ERROR, new a(IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOTING_WATERFALL_OVERHEAD, new a(IronSourceConstants.TROUBLESHOOTING_RV_WATERFALL_OVERHEAD, IronSourceConstants.TROUBLESHOOTING_RV_WATERFALL_OVERHEAD));
        this.l.put(com.ironsource.mediationsdk.adunit.b.b.TROUBLESHOOT_NOTIFICATION_ERROR, new a(IronSourceConstants.TROUBLESHOOTING_RV_NOTIFICATIONS_ERROR, -1));
        this.f10980a = new g(this);
        this.f10981b = new h(this);
        this.f10982c = new e(this);
        this.f10983d = new com.ironsource.mediationsdk.adunit.b.a(this);
        this.f10984e = new i(this);
    }

    private int a(com.ironsource.mediationsdk.adunit.b.b bVar) {
        try {
            if (IronSource.AD_UNIT.INTERSTITIAL.equals(this.f10986g) && this.k.containsKey(bVar)) {
                return this.k.get(bVar).a(this.f10987h);
            }
            if (IronSource.AD_UNIT.REWARDED_VIDEO.equals(this.f10986g) && this.l.containsKey(bVar)) {
                return this.l.get(bVar).a(this.f10987h);
            }
            return -1;
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    public final void a() {
        this.i = null;
        this.f10982c = null;
        this.f10980a = null;
        this.f10981b = null;
        this.f10983d = null;
        this.f10984e = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(com.ironsource.mediationsdk.adunit.b.b bVar, Map<String, Object> map) {
        a(bVar, map, System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(com.ironsource.mediationsdk.adunit.b.b bVar, Map<String, Object> map, long j) {
        int a2 = a(bVar);
        if (-1 == a2) {
            return;
        }
        if (map == null) {
            map = new HashMap<>();
        }
        c cVar = this.i;
        if (cVar != null) {
            map.putAll(cVar.a(bVar));
        }
        this.j.b(new com.ironsource.mediationsdk.a.c(a2, j, new JSONObject(map)));
    }
}
