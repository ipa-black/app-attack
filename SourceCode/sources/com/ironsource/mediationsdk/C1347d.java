package com.ironsource.mediationsdk;

import android.text.TextUtils;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.ironsource.mediationsdk.IronSource;
import com.ironsource.mediationsdk.adunit.adapter.AdapterDebugInterface;
import com.ironsource.mediationsdk.adunit.adapter.BaseAdapter;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterAPSDataInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterBaseWrapper;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterConsentInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.AdapterMetaDataInterface;
import com.ironsource.mediationsdk.adunit.adapter.internal.BaseAdAdapter;
import com.ironsource.mediationsdk.logger.IronLog;
import com.ironsource.mediationsdk.logger.IronSourceLogger;
import com.ironsource.mediationsdk.logger.IronSourceLoggerManager;
import com.ironsource.mediationsdk.model.NetworkSettings;
import com.ironsource.mediationsdk.utils.IronSourceConstants;
import com.ironsource.mediationsdk.utils.IronSourceUtils;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;
/* renamed from: com.ironsource.mediationsdk.d  reason: case insensitive filesystem */
/* loaded from: classes3.dex */
public final class C1347d {

    /* renamed from: d  reason: collision with root package name */
    private static final C1347d f11097d = new C1347d();

    /* renamed from: e  reason: collision with root package name */
    private static final Object f11098e = new Object();

    /* renamed from: a  reason: collision with root package name */
    String f11099a;

    /* renamed from: b  reason: collision with root package name */
    String f11100b;

    /* renamed from: h  reason: collision with root package name */
    private Boolean f11104h;
    private Boolean i;
    private final AtomicBoolean k = new AtomicBoolean(false);

    /* renamed from: f  reason: collision with root package name */
    private final ConcurrentHashMap<String, AbstractAdapter> f11102f = new ConcurrentHashMap<>();

    /* renamed from: g  reason: collision with root package name */
    private final ConcurrentHashMap<String, AdapterBaseWrapper> f11103g = new ConcurrentHashMap<>();

    /* renamed from: c  reason: collision with root package name */
    final ConcurrentHashMap<String, List<String>> f11101c = new ConcurrentHashMap<>();
    private final ConcurrentHashMap<IronSource.AD_UNIT, JSONObject> j = new ConcurrentHashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.ironsource.mediationsdk.d$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f11105a;

        static {
            int[] iArr = new int[IronSource.AD_UNIT.values().length];
            f11105a = iArr;
            try {
                iArr[IronSource.AD_UNIT.REWARDED_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f11105a[IronSource.AD_UNIT.INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f11105a[IronSource.AD_UNIT.BANNER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private C1347d() {
    }

    private AbstractAdapter a(String str, String str2) {
        try {
            Class<?> cls = Class.forName("com.ironsource.adapters." + str2.toLowerCase(Locale.ENGLISH) + "." + str2 + "Adapter");
            return (AbstractAdapter) cls.getMethod(IronSourceConstants.START_ADAPTER, String.class).invoke(cls, str);
        } catch (Exception e2) {
            String str3 = "Error while loading adapter - exception = " + e2.getLocalizedMessage();
            a((int) IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str3);
            a(str3);
            return null;
        }
    }

    private AdapterBaseInterface a(String str, String str2, NetworkSettings networkSettings) {
        if (networkSettings.isCustomNetwork() && TextUtils.isEmpty(networkSettings.getCustomNetworkPackage())) {
            IronLog.INTERNAL.error("missing package definition for " + str);
            return null;
        }
        String str3 = (networkSettings.isCustomNetwork() ? networkSettings.getCustomNetworkPackage() : "com.ironsource.adapters") + "." + str2;
        try {
            BaseAdapter baseAdapter = (BaseAdapter) Class.forName(str3).newInstance();
            IronLog.INTERNAL.info(str3 + " was allocated (adapter version: " + baseAdapter.getAdapterVersion() + ", sdk version: " + baseAdapter.getNetworkSDKVersion() + ")");
            Boolean bool = this.i;
            if (bool != null && (baseAdapter instanceof AdapterDebugInterface)) {
                try {
                    baseAdapter.setAdapterDebug(bool.booleanValue());
                } catch (Exception e2) {
                    String str4 = "error while setting adapterDebug of " + baseAdapter.getClass().getSimpleName() + ": " + e2.getLocalizedMessage();
                    a((int) IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str4);
                    b(str4);
                    e2.printStackTrace();
                }
            }
            this.f11103g.put(str, new AdapterBaseWrapper(baseAdapter, networkSettings));
            return baseAdapter;
        } catch (Exception unused) {
            if (networkSettings.isCustomNetwork()) {
                String str5 = "failed to load " + str3;
                IronLog.INTERNAL.error(str5);
                a((int) IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str5);
            }
            return null;
        }
    }

    public static C1347d a() {
        return f11097d;
    }

    private static void a(int i, String str) {
        try {
            JSONObject jSONObject = new JSONObject();
            if (!TextUtils.isEmpty(str)) {
                jSONObject.put(IronSourceConstants.EVENTS_ERROR_REASON, str);
            }
            com.ironsource.mediationsdk.a.d.e().b(new com.ironsource.mediationsdk.a.c(i, jSONObject));
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    private void a(AbstractAdapter abstractAdapter) {
        try {
            Boolean bool = this.f11104h;
            if (bool != null) {
                abstractAdapter.setConsent(bool.booleanValue());
            }
        } catch (Throwable th) {
            String str = "error while setting consent of " + abstractAdapter.getProviderName() + ": " + th.getLocalizedMessage();
            a((int) IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str);
            b(str);
            th.printStackTrace();
        }
    }

    private void a(IronSource.AD_UNIT ad_unit, JSONObject jSONObject) {
        if (jSONObject == null || jSONObject.length() == 0) {
            a((int) IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_APS_INTERNAL_ERROR, "APSData is empty");
            a("APSData is empty");
            return;
        }
        try {
            JSONObject jSONObject2 = new JSONObject(jSONObject.toString());
            if (!this.f11102f.isEmpty()) {
                for (AbstractAdapter abstractAdapter : this.f11102f.values()) {
                    if (abstractAdapter.getProviderName().toLowerCase(Locale.ENGLISH).equals("aps") && (abstractAdapter instanceof SetAPSInterface)) {
                        ((SetAPSInterface) abstractAdapter).setAPSData(ad_unit, jSONObject2);
                        return;
                    }
                }
            }
            for (AdapterBaseWrapper adapterBaseWrapper : this.f11103g.values()) {
                AdapterBaseInterface adapterBaseInterface = adapterBaseWrapper.getAdapterBaseInterface();
                if (!adapterBaseWrapper.getSettings().isCustomNetwork() && (adapterBaseInterface instanceof AdapterAPSDataInterface)) {
                    ((AdapterAPSDataInterface) adapterBaseInterface).setAPSData(ad_unit, jSONObject2);
                    return;
                }
            }
            synchronized (f11098e) {
                this.j.put(ad_unit, jSONObject2);
            }
        } catch (Exception e2) {
            String str = "error while setting APSData: " + e2.getLocalizedMessage();
            a((int) IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_APS_INTERNAL_ERROR, str);
            a(str);
            e2.printStackTrace();
        }
    }

    private static void a(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "AdapterRepository: " + str, 3);
    }

    private static String b(NetworkSettings networkSettings) {
        return networkSettings.isMultipleInstances() ? networkSettings.getProviderDefaultInstance() : networkSettings.getProviderName();
    }

    private void b(AbstractAdapter abstractAdapter) {
        Boolean bool = this.i;
        if (bool != null) {
            try {
                abstractAdapter.setAdapterDebug(bool);
            } catch (Throwable th) {
                String str = "error while setting adapterDebug of " + abstractAdapter.getProviderName() + ": " + th.getLocalizedMessage();
                a((int) IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str);
                b(str);
                th.printStackTrace();
            }
        }
    }

    private static void b(String str) {
        IronSourceLoggerManager.getLogger().log(IronSourceLogger.IronSourceTag.INTERNAL, "AdapterRepository: " + str, 0);
    }

    private BaseAdAdapter<?, ?> c(NetworkSettings networkSettings, IronSource.AD_UNIT ad_unit) {
        if (networkSettings.isCustomNetwork() && TextUtils.isEmpty(networkSettings.getCustomNetworkPackage())) {
            IronLog.INTERNAL.error("missing package definition for " + networkSettings.getProviderTypeForReflection());
            return null;
        }
        String str = (networkSettings.isCustomNetwork() ? networkSettings.getCustomNetworkPackage() : "com.ironsource.adapters") + "." + (networkSettings.isCustomNetwork() ? networkSettings.getCustomNetworkAdapterName(ad_unit) : networkSettings.getProviderTypeForReflection());
        try {
            return (BaseAdAdapter) Class.forName(str).getConstructor(NetworkSettings.class).newInstance(networkSettings);
        } catch (Exception unused) {
            if (networkSettings.isCustomNetwork()) {
                String str2 = "failed to load " + str;
                IronLog.INTERNAL.error(str2);
                a((int) IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str2);
            }
            return null;
        }
    }

    private void c(AbstractAdapter abstractAdapter) {
        for (String str : this.f11101c.keySet()) {
            try {
                List<String> list = this.f11101c.get(str);
                IronSourceUtils.sendAutomationLog(abstractAdapter.getProviderName() + "Adapter setMetaData key = " + str + ", values = " + list);
                if (list != null) {
                    abstractAdapter.setMetaData(str, list);
                }
            } catch (Throwable th) {
                String str2 = "error while setting metadata of " + abstractAdapter.getProviderName() + ": " + th.getLocalizedMessage();
                a((int) IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str2);
                b(str2);
                th.printStackTrace();
            }
        }
    }

    private void d(AbstractAdapter abstractAdapter) {
        if (!abstractAdapter.getProviderName().toLowerCase(Locale.ENGLISH).equals("aps") || this.j.size() == 0) {
            return;
        }
        for (IronSource.AD_UNIT ad_unit : this.j.keySet()) {
            try {
                JSONObject jSONObject = this.j.get(ad_unit);
                if (jSONObject != null && jSONObject.length() > 0 && (abstractAdapter instanceof SetAPSInterface)) {
                    ((SetAPSInterface) abstractAdapter).setAPSData(ad_unit, jSONObject);
                }
            } catch (Exception e2) {
                String str = "error while setting aps data: " + e2.getLocalizedMessage();
                a((int) IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_APS_INTERNAL_ERROR, str);
                b(str);
                e2.printStackTrace();
            }
        }
        this.j.clear();
    }

    public final AbstractAdapter a(NetworkSettings networkSettings) {
        String b2 = b(networkSettings);
        return networkSettings.getProviderTypeForReflection().equalsIgnoreCase(IronSourceConstants.SUPERSONIC_CONFIG_NAME) ? this.f11102f.get(b2) : a(b2, networkSettings.getProviderTypeForReflection());
    }

    public final AbstractAdapter a(NetworkSettings networkSettings, JSONObject jSONObject, boolean z, boolean z2) {
        String str;
        String b2 = b(networkSettings);
        String providerTypeForReflection = z ? IronSourceConstants.IRONSOURCE_CONFIG_NAME : networkSettings.getProviderTypeForReflection();
        synchronized (f11098e) {
            if (!z2) {
                if (this.f11102f.containsKey(b2)) {
                    return this.f11102f.get(b2);
                }
            }
            AbstractAdapter a2 = a(b2, providerTypeForReflection);
            if (a2 == null) {
                a(b2 + " adapter was not loaded");
                return null;
            }
            try {
                str = a2.getCoreSDKVersion();
            } catch (Exception e2) {
                String str2 = "error while retrieving coreSDKVersion " + a2.getProviderName() + ": " + e2.getLocalizedMessage();
                a((int) IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str2);
                IronLog.INTERNAL.error(str2);
                str = LogConstants.KEY_UNKNOWN;
            }
            b(b2 + " was allocated (adapter version: " + a2.getVersion() + ", sdk version: " + str + ")");
            a2.setLogListener(IronSourceLoggerManager.getLogger());
            c(a2);
            d(a2);
            a(a2);
            b(a2);
            if ((providerTypeForReflection.equalsIgnoreCase(IronSourceConstants.SUPERSONIC_CONFIG_NAME) || providerTypeForReflection.equalsIgnoreCase(IronSourceConstants.IRONSOURCE_CONFIG_NAME)) && this.k.compareAndSet(false, true)) {
                b("SDK5 earlyInit  <" + providerTypeForReflection + ">");
                try {
                    a2.earlyInit(this.f11099a, this.f11100b, jSONObject);
                } catch (Exception e3) {
                    String str3 = "error while calling early init for " + a2.getProviderName() + ": " + e3.getLocalizedMessage();
                    a((int) IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str3);
                    IronLog.INTERNAL.error(str3);
                }
            }
            if (!z2) {
                this.f11102f.put(b2, a2);
            }
            return a2;
        }
    }

    public final AdapterBaseInterface a(NetworkSettings networkSettings, IronSource.AD_UNIT ad_unit) {
        String b2 = b(networkSettings);
        if (this.f11103g.containsKey(b2)) {
            AdapterBaseInterface adapterBaseInterface = this.f11103g.get(b2).getAdapterBaseInterface();
            if (adapterBaseInterface instanceof N) {
                ((N) adapterBaseInterface).f10776a = ad_unit;
            }
            return adapterBaseInterface;
        }
        AdapterBaseInterface a2 = a(b2, networkSettings.isCustomNetwork() ? networkSettings.getCustomNetworkAdapterName(null) : networkSettings.getProviderTypeForReflection(), networkSettings);
        if (a2 == null) {
            int i = AnonymousClass1.f11105a[ad_unit.ordinal()];
            AbstractAdapter a3 = a(networkSettings, i != 1 ? i != 2 ? i != 3 ? null : networkSettings.getBannerSettings() : networkSettings.getInterstitialSettings() : networkSettings.getRewardedVideoSettings(), false, true);
            if (a3 != null) {
                N n = new N(a3, networkSettings, ad_unit);
                this.f11103g.put(b2, new AdapterBaseWrapper(n, networkSettings));
                return n;
            }
            String str = "error creating network adapter " + networkSettings.getProviderName();
            a((int) IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str);
            IronLog.INTERNAL.error(str);
            return null;
        }
        return a2;
    }

    public final void a(String str, List<String> list) {
        synchronized (f11098e) {
            this.f11101c.put(str, list);
            if (!this.f11102f.isEmpty()) {
                IronSourceUtils.sendAutomationLog("setMetaData key = " + str + ", values = " + list);
                for (AbstractAdapter abstractAdapter : this.f11102f.values()) {
                    abstractAdapter.setMetaData(str, list);
                }
            }
            for (AdapterBaseWrapper adapterBaseWrapper : this.f11103g.values()) {
                AdapterBaseInterface adapterBaseInterface = adapterBaseWrapper.getAdapterBaseInterface();
                if (!adapterBaseWrapper.getSettings().isCustomNetwork() && (adapterBaseInterface instanceof AdapterMetaDataInterface)) {
                    try {
                        ((AdapterMetaDataInterface) adapterBaseInterface).setMetaData(str, list);
                    } catch (Exception e2) {
                        String str2 = "error while setting metadata of " + adapterBaseInterface.getClass().getSimpleName() + ": " + e2.getLocalizedMessage();
                        a((int) IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str2);
                        b(str2);
                        e2.printStackTrace();
                    }
                }
            }
        }
    }

    public final void a(String str, JSONObject jSONObject) {
        String str2;
        IronSource.AD_UNIT ad_unit;
        if (TextUtils.isEmpty(str)) {
            str2 = "Calling setNetworkData on an empty network";
        } else if (jSONObject == null || jSONObject.length() == 0) {
            str2 = "Calling setNetworkData with empty networkData";
        } else if (str.toLowerCase(Locale.ENGLISH).equals("aps")) {
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                String next = keys.next();
                if (next.toLowerCase(Locale.ENGLISH).equals(IronSource.AD_UNIT.BANNER.toString())) {
                    ad_unit = IronSource.AD_UNIT.BANNER;
                } else if (next.toLowerCase(Locale.ENGLISH).equals(IronSource.AD_UNIT.INTERSTITIAL.toString())) {
                    ad_unit = IronSource.AD_UNIT.INTERSTITIAL;
                }
                a(ad_unit, jSONObject.optJSONObject(next));
            }
            return;
        } else {
            str2 = "Calling setNetworkData on an unsupported network: " + str;
        }
        a((int) IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_APS_INTERNAL_ERROR, str2);
        a(str2);
    }

    public final void a(boolean z) {
        synchronized (f11098e) {
            this.f11104h = Boolean.valueOf(z);
            for (AbstractAdapter abstractAdapter : this.f11102f.values()) {
                a(abstractAdapter);
            }
            for (AdapterBaseWrapper adapterBaseWrapper : this.f11103g.values()) {
                AdapterBaseInterface adapterBaseInterface = adapterBaseWrapper.getAdapterBaseInterface();
                if (!adapterBaseWrapper.getSettings().isCustomNetwork() && (adapterBaseInterface instanceof AdapterConsentInterface)) {
                    try {
                        ((AdapterConsentInterface) adapterBaseInterface).setConsent(z);
                    } catch (Exception e2) {
                        String str = "error while setting consent of " + adapterBaseInterface.getClass().getSimpleName() + ": " + e2.getLocalizedMessage();
                        a((int) IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str);
                        b(str);
                        e2.printStackTrace();
                    }
                }
            }
        }
    }

    public final BaseAdAdapter<?, ?> b(NetworkSettings networkSettings, IronSource.AD_UNIT ad_unit) {
        BaseAdAdapter<?, ?> c2 = c(networkSettings, ad_unit);
        if (c2 == null) {
            AbstractAdapter a2 = a(networkSettings);
            if (a2 == null || (ad_unit != IronSource.AD_UNIT.INTERSTITIAL && ad_unit != IronSource.AD_UNIT.REWARDED_VIDEO)) {
                String str = "error creating ad adapter " + networkSettings.getProviderName();
                a((int) IronSourceConstants.TROUBLESHOOTING_ADAPTER_REPOSITORY_INTERNAL_ERROR, str);
                IronLog.INTERNAL.error(str);
                return null;
            }
            return new N(a2, networkSettings, ad_unit);
        }
        return c2;
    }

    public final void b(boolean z) {
        synchronized (f11098e) {
            this.i = Boolean.valueOf(z);
            for (AbstractAdapter abstractAdapter : this.f11102f.values()) {
                b(abstractAdapter);
            }
        }
    }
}
