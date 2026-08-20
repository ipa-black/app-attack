package io.bidmachine.displays;

import android.graphics.Color;
import android.text.TextUtils;
import com.explorestack.iab.utils.IabElementStyle;
import com.explorestack.protobuf.Value;
import com.explorestack.protobuf.adcom.Ad;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.protobuf.AdExtension;
import io.bidmachine.unified.UnifiedMediationParams;
import io.bidmachine.utils.IabUtils;
import java.util.HashMap;
import java.util.Map;
import org.apache.ldap.server.jndi.JavaLdapSupport;
/* loaded from: classes5.dex */
abstract class IabAdObjectParams extends AdObjectParams implements UnifiedMediationParams.MappedUnifiedMediationParams.DataProvider {
    private final UnifiedMediationParams mediationParams;
    private Map<String, Object> params;

    /* JADX INFO: Access modifiers changed from: package-private */
    public IabAdObjectParams(Ad ad) {
        super(ad);
        this.mediationParams = new UnifiedMediationParams.MappedUnifiedMediationParams(this);
        getData().put(IabUtils.KEY_CREATIVE_ID, ad.getId());
    }

    @Override // io.bidmachine.unified.UnifiedMediationParams.MappedUnifiedMediationParams.DataProvider
    public Map<String, Object> getData() {
        if (this.params == null) {
            this.params = new HashMap();
        }
        return this.params;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.models.AdObjectParams
    public void prepareExtensions(AdExtension adExtension) {
        super.prepareExtensions(adExtension);
        getData().put(IabUtils.KEY_USE_NATIVE_CLOSE, Boolean.valueOf(adExtension.getUseNativeClose()));
        getData().put(IabUtils.KEY_CACHE_CONTROL, IabUtils.toCacheControl(adExtension.getCreativeLoadingMethod()));
        getData().put(IabUtils.KEY_PLACEHOLDER_TIMEOUT_SEC, Float.valueOf(adExtension.getPlaceholderTimeout()));
        getData().put(IabUtils.KEY_SKIP_OFFSET, Integer.valueOf(adExtension.getSkipoffset()));
        getData().put(IabUtils.KEY_COMPANION_SKIP_OFFSET, Integer.valueOf(adExtension.getCompanionSkipoffset()));
        getData().put(IabUtils.KEY_R1, Boolean.valueOf(adExtension.getR1()));
        getData().put(IabUtils.KEY_R2, Boolean.valueOf(adExtension.getR2()));
        getData().put(IabUtils.KEY_STORE_URL, adExtension.getStoreUrl());
        getData().put(IabUtils.KEY_PROGRESS_DURATION, Integer.valueOf(adExtension.getProgressDuration()));
        IabElementStyle transform = transform(adExtension.getCloseButton());
        if (transform != null) {
            getData().put(IabUtils.KEY_CLOSABLE_VIEW_STYLE, transform);
        }
        IabElementStyle transform2 = transform(adExtension.getCountdown());
        if (transform2 != null) {
            getData().put(IabUtils.KEY_COUNTDOWN_STYLE, transform2);
        }
        IabElementStyle transform3 = transform(adExtension.getProgress());
        if (transform3 != null) {
            getData().put(IabUtils.KEY_PROGRESS_STYLE, transform3);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // io.bidmachine.models.AdObjectParams
    public void prepareExtensions(Map<String, Value> map) {
        super.prepareExtensions(map);
        Value value = map.get(IabUtils.KEY_OM_SDK_ENABLED);
        if (value != null) {
            getData().put(IabUtils.KEY_OM_SDK_ENABLED, Boolean.valueOf(value.getBoolValue()));
        }
    }

    public void setWidth(int i) {
        getData().put(IabUtils.KEY_WIDTH, Integer.valueOf(i));
    }

    public void setHeight(int i) {
        getData().put(IabUtils.KEY_HEIGHT, Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setCreativeAdm(String str) {
        getData().put(IabUtils.KEY_CREATIVE_ADM, str);
    }

    @Override // io.bidmachine.models.AdObjectParams
    public boolean isValid() {
        Object obj = this.params.get(IabUtils.KEY_CREATIVE_ADM);
        return (obj instanceof String) && !TextUtils.isEmpty((CharSequence) obj);
    }

    @Override // io.bidmachine.models.AdObjectParams
    public UnifiedMediationParams toMediationParams() {
        return this.mediationParams;
    }

    IabElementStyle transform(AdExtension.ControlAsset controlAsset) {
        if (controlAsset == null) {
            return null;
        }
        try {
            IabElementStyle iabElementStyle = new IabElementStyle();
            iabElementStyle.setMargin(controlAsset.getMargin());
            iabElementStyle.setPadding(controlAsset.getPadding());
            iabElementStyle.setContent(controlAsset.getContent());
            iabElementStyle.setFillColor(parseColor(controlAsset.getFill()));
            iabElementStyle.setFontStyle(Integer.valueOf(controlAsset.getFontStyle()));
            iabElementStyle.setWidth(Integer.valueOf(controlAsset.getWidth()));
            iabElementStyle.setHeight(Integer.valueOf(controlAsset.getHeight()));
            iabElementStyle.setHideAfter(Float.valueOf(controlAsset.getHideafter()));
            iabElementStyle.setHorizontalPosition(parseHorizontalPosition(controlAsset.getX()));
            iabElementStyle.setVerticalPosition(parseVerticalPosition(controlAsset.getY()));
            iabElementStyle.setOpacity(Float.valueOf(controlAsset.getOpacity()));
            iabElementStyle.setOutlined(Boolean.valueOf(controlAsset.getOutlined()));
            iabElementStyle.setStrokeColor(parseColor(controlAsset.getStroke()));
            iabElementStyle.setStrokeWidth(Float.valueOf(controlAsset.getStrokeWidth()));
            iabElementStyle.setStyle(controlAsset.getStyle());
            iabElementStyle.setVisible(Boolean.valueOf(controlAsset.getVisible()));
            return iabElementStyle;
        } catch (Exception unused) {
            return null;
        }
    }

    Integer parseColor(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return Integer.valueOf(Color.parseColor(str));
        } catch (Exception unused) {
            return null;
        }
    }

    Integer parseHorizontalPosition(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c2 = 0;
                    break;
                }
                break;
            case 3317767:
                if (str.equals(TtmlNode.LEFT)) {
                    c2 = 1;
                    break;
                }
                break;
            case 108511772:
                if (str.equals(TtmlNode.RIGHT)) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 1;
            case 1:
                return 3;
            case 2:
                return 5;
            default:
                return null;
        }
    }

    Integer parseVerticalPosition(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1383228885:
                if (str.equals("bottom")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1364013995:
                if (str.equals(TtmlNode.CENTER)) {
                    c2 = 1;
                    break;
                }
                break;
            case 115029:
                if (str.equals(JavaLdapSupport.TOP_ATTR)) {
                    c2 = 2;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return 80;
            case 1:
                return 16;
            case 2:
                return 48;
            default:
                return null;
        }
    }
}
