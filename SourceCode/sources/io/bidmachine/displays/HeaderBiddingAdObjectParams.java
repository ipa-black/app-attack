package io.bidmachine.displays;

import com.explorestack.protobuf.adcom.Ad;
import io.bidmachine.core.Logger;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.protobuf.headerbidding.HeaderBiddingAd;
import io.bidmachine.unified.UnifiedMediationParams;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public class HeaderBiddingAdObjectParams extends AdObjectParams {
    private final HeaderBiddingAd headerBiddingAd;
    private final HeaderBiddingUnifiedMediationParams mediationParams;

    @Override // io.bidmachine.models.AdObjectParams
    public boolean isValid() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public HeaderBiddingAdObjectParams(Ad ad, HeaderBiddingAd headerBiddingAd) {
        super(ad);
        this.headerBiddingAd = headerBiddingAd;
        this.mediationParams = new HeaderBiddingUnifiedMediationParams();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getParam(String str) {
        if (str == null) {
            return null;
        }
        String serverParamsOrDefault = this.headerBiddingAd.getServerParamsOrDefault(str, null);
        return serverParamsOrDefault == null ? this.headerBiddingAd.getClientParamsOrDefault(str, null) : serverParamsOrDefault;
    }

    @Override // io.bidmachine.models.AdObjectParams
    public UnifiedMediationParams toMediationParams() {
        return this.mediationParams;
    }

    /* loaded from: classes5.dex */
    private class HeaderBiddingUnifiedMediationParams extends UnifiedMediationParams {
        private HeaderBiddingUnifiedMediationParams() {
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public String getString(String str, String str2) {
            String param = HeaderBiddingAdObjectParams.this.getParam(str);
            return param != null ? param : str2;
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public int getInt(String str, int i) {
            String param = HeaderBiddingAdObjectParams.this.getParam(str);
            if (param != null) {
                try {
                    return Integer.parseInt(param);
                } catch (Exception e2) {
                    Logger.log(e2);
                }
            }
            return i;
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public Integer getInteger(String str, Integer num) {
            String param = HeaderBiddingAdObjectParams.this.getParam(str);
            if (param != null) {
                try {
                    return Integer.valueOf(Integer.parseInt(param));
                } catch (Exception e2) {
                    Logger.log(e2);
                }
            }
            return num;
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public boolean getBool(String str, boolean z) {
            String param = HeaderBiddingAdObjectParams.this.getParam(str);
            if (param != null) {
                try {
                    return Boolean.parseBoolean(param);
                } catch (Exception e2) {
                    Logger.log(e2);
                }
            }
            return z;
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public double getDouble(String str, double d2) {
            String param = HeaderBiddingAdObjectParams.this.getParam(str);
            if (param != null) {
                try {
                    return Double.parseDouble(param);
                } catch (Exception e2) {
                    Logger.log(e2);
                }
            }
            return d2;
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public float getFloat(String str, float f2) {
            String param = HeaderBiddingAdObjectParams.this.getParam(str);
            if (param != null) {
                try {
                    return Float.parseFloat(param);
                } catch (Exception e2) {
                    Logger.log(e2);
                }
            }
            return f2;
        }

        @Override // io.bidmachine.unified.UnifiedMediationParams
        public boolean contains(String str) {
            return str != null && (HeaderBiddingAdObjectParams.this.headerBiddingAd.containsServerParams(str) || HeaderBiddingAdObjectParams.this.headerBiddingAd.containsClientParams(str));
        }
    }
}
