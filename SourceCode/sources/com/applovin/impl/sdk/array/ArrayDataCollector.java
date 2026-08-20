package com.applovin.impl.sdk.array;

import com.applovin.array.apphub.aidl.IAppHubService;
import com.applovin.impl.sdk.c.b;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.v;
/* loaded from: classes.dex */
public class ArrayDataCollector {
    private static final String TAG = "ArrayService";
    private final v logger;
    private final n sdk;

    public ArrayDataCollector(n nVar) {
        this.sdk = nVar;
        this.logger = nVar.D();
    }

    public long maybeCollectAppHubVersionCode(IAppHubService iAppHubService) {
        if (((Boolean) this.sdk.a(b.aw)).booleanValue()) {
            try {
                return iAppHubService.getAppHubVersionCode();
            } catch (Throwable th) {
                if (v.a()) {
                    this.logger.b(TAG, "Failed to collect App Hub version code", th);
                }
                return -1L;
            }
        }
        return -1L;
    }

    public boolean maybeCollectDirectDownloadEnabled(IAppHubService iAppHubService) {
        if (((Boolean) this.sdk.a(b.ax)).booleanValue()) {
            try {
                return iAppHubService.getEnabledFeatures().getBoolean("DIRECT_DOWNLOAD");
            } catch (Throwable th) {
                if (v.a()) {
                    this.logger.b(TAG, "Failed to collect App Hub version code", th);
                }
                return false;
            }
        }
        return false;
    }

    public String maybeCollectRandomUserToken(IAppHubService iAppHubService) {
        if (((Boolean) this.sdk.a(b.ay)).booleanValue()) {
            try {
                return iAppHubService.getRandomUserToken();
            } catch (Throwable th) {
                if (v.a()) {
                    this.logger.b(TAG, "Failed to collect random user token", th);
                }
                return null;
            }
        }
        return null;
    }
}
