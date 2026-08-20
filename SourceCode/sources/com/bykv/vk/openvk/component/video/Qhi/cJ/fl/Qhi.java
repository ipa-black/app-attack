package com.bykv.vk.openvk.component.video.Qhi.cJ.fl;

import com.bykv.vk.openvk.component.video.Qhi.cJ.WAv;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.explorestack.iab.vast.VastError;
import java.io.InputStream;
import java.util.List;
/* compiled from: AbsResponseWrapper.java */
/* loaded from: classes2.dex */
public abstract class Qhi {
    List<WAv.cJ> Qhi;
    Tgh cJ;

    public abstract InputStream CJ();

    public abstract int Qhi();

    public abstract String Qhi(String str, String str2);

    public abstract String Tgh();

    public abstract List<WAv.cJ> ac();

    public abstract boolean cJ();

    public abstract String fl();

    public Tgh ROR() {
        return this.cJ;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public WAv.cJ Qhi(String str) {
        List<WAv.cJ> list;
        if (str != null && (list = this.Qhi) != null && list.size() > 0) {
            for (WAv.cJ cJVar : this.Qhi) {
                if (str.equals(cJVar.Qhi)) {
                    return cJVar;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String Qhi(int i) {
        switch (i) {
            case 200:
                return "OK";
            case 201:
                return "Created";
            case 202:
                return "Accepted";
            case LOSS_REASON_CREATIVE_FILTERED_SIZE_NOT_ALLOWED_VALUE:
                return "Non-Authoritative";
            case 204:
                return "No Content";
            case LOSS_REASON_CREATIVE_FILTERED_ADVERTISER_EXCLUSIONS_VALUE:
                return "Reset Content";
            case LOSS_REASON_CREATIVE_FILTERED_NOT_SECURE_VALUE:
                return "Partial Content";
            default:
                switch (i) {
                    case VastError.ERROR_CODE_GENERAL_WRAPPER /* 300 */:
                        return "Multiple Choices";
                    case 301:
                        return "Moved Permanently";
                    case 302:
                        return "Temporary Redirect";
                    case 303:
                        return "See Other";
                    case 304:
                        return "Not Modified";
                    case 305:
                        return "Use Proxy";
                    default:
                        switch (i) {
                            case 400:
                                return "Bad Request";
                            case 401:
                                return "Unauthorized";
                            case 402:
                                return "Payment Required";
                            case 403:
                                return "Forbidden";
                            case TTAdConstant.DEEPLINK_FALLBACK_CODE /* 404 */:
                                return "Not Found";
                            case 405:
                                return "Method Not Allowed";
                            case TTAdConstant.LANDING_PAGE_TYPE_CODE /* 406 */:
                                return "Not Acceptable";
                            case TTAdConstant.DOWNLOAD_APP_INFO_CODE /* 407 */:
                                return "Proxy Authentication Required";
                            case TTAdConstant.DOWNLOAD_URL_CODE /* 408 */:
                                return "Request Time-Out";
                            case TTAdConstant.IMAGE_LIST_CODE /* 409 */:
                                return "Conflict";
                            case TTAdConstant.IMAGE_LIST_SIZE_CODE /* 410 */:
                                return "Gone";
                            case TTAdConstant.IMAGE_CODE /* 411 */:
                                return "Length Required";
                            case TTAdConstant.IMAGE_URL_CODE /* 412 */:
                                return "Precondition Failed";
                            case TTAdConstant.VIDEO_INFO_CODE /* 413 */:
                                return "Request Entity Too Large";
                            case TTAdConstant.VIDEO_URL_CODE /* 414 */:
                                return "Request-URI Too Large";
                            case TTAdConstant.VIDEO_COVER_URL_CODE /* 415 */:
                                return "Unsupported Media Type";
                            default:
                                switch (i) {
                                    case 500:
                                        return "Internal Server Error";
                                    case 501:
                                        return "Not Implemented";
                                    case 502:
                                        return "Bad Gateway";
                                    case 503:
                                        return "Service Unavailable";
                                    case 504:
                                        return "Gateway Timeout";
                                    case 505:
                                        return "HTTP Version Not Supported";
                                    default:
                                        return "";
                                }
                        }
                }
        }
    }
}
