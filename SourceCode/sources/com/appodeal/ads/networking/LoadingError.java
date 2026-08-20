package com.appodeal.ads.networking;

import com.appodeal.ads.e0;
import kotlin.Metadata;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum InternalError uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:368)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:333)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:318)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:289)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
@Metadata(bv = {}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0016\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B!\b\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\f\u001a\u00020\u000b¢\u0006\u0004\b\u0010\u0010\u0011J\b\u0010\u0003\u001a\u00020\u0002H\u0016R\u0014\u0010\u0004\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0017\u0010\u0007\u001a\u00020\u00068\u0006¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\nR\u0017\u0010\f\u001a\u00020\u000b8\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000fj\u0002\b\u0012j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001dj\u0002\b\u001ej\u0002\b\u001fj\u0002\b ¨\u0006!"}, d2 = {"Lcom/appodeal/ads/networking/LoadingError;", "", "", "toString", "description", "Ljava/lang/String;", "Lcom/appodeal/ads/e0;", "requestResult", "Lcom/appodeal/ads/e0;", "getRequestResult", "()Lcom/appodeal/ads/e0;", "", "code", "I", "getCode", "()I", "<init>", "(Ljava/lang/String;ILjava/lang/String;Lcom/appodeal/ads/e0;I)V", "NoFill", "InternalError", "TimeoutError", "ConnectionError", "RequestError", "ServerError", "RequestVerificationFailed", "SdkVersionNotSupported", "InvalidAssets", "AdapterNotFound", "AdTypeNotSupportedInAdapter", "Canceled", "IncorrectAdunit", "IncorrectCreative", "ShowFailed", "apd_core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes2.dex */
public final class LoadingError {
    private static final /* synthetic */ LoadingError[] $VALUES;
    public static final LoadingError AdTypeNotSupportedInAdapter;
    public static final LoadingError AdapterNotFound;
    public static final LoadingError Canceled;
    public static final LoadingError ConnectionError;
    public static final LoadingError IncorrectAdunit;
    public static final LoadingError IncorrectCreative;
    public static final LoadingError InternalError;
    public static final LoadingError InvalidAssets;
    public static final LoadingError NoFill = new LoadingError("NoFill", 0, "no fill", e0.NoFill, 2);
    public static final LoadingError RequestError;
    public static final LoadingError RequestVerificationFailed;
    public static final LoadingError SdkVersionNotSupported;
    public static final LoadingError ServerError;
    public static final LoadingError ShowFailed;
    public static final LoadingError TimeoutError;
    private final int code;
    private final String description;
    private final e0 requestResult;

    private static final /* synthetic */ LoadingError[] $values() {
        return new LoadingError[]{NoFill, InternalError, TimeoutError, ConnectionError, RequestError, ServerError, RequestVerificationFailed, SdkVersionNotSupported, InvalidAssets, AdapterNotFound, AdTypeNotSupportedInAdapter, Canceled, IncorrectAdunit, IncorrectCreative, ShowFailed};
    }

    static {
        e0 e0Var = e0.Exception;
        InternalError = new LoadingError("InternalError", 1, "internal error", e0Var, 4);
        TimeoutError = new LoadingError("TimeoutError", 2, "timeout error", e0.TimeOutReached, 3);
        ConnectionError = new LoadingError("ConnectionError", 3, "connection error", e0Var, 4);
        RequestError = new LoadingError("RequestError", 4, "request error", e0Var, 4);
        ServerError = new LoadingError("ServerError", 5, "server error", e0Var, 4);
        RequestVerificationFailed = new LoadingError("RequestVerificationFailed", 6, "request verification failed", e0Var, 4);
        SdkVersionNotSupported = new LoadingError("SdkVersionNotSupported", 7, "sdk version not supported", e0Var, 4);
        InvalidAssets = new LoadingError("InvalidAssets", 8, "invalid assets", e0.InvalidAssets, 7);
        AdapterNotFound = new LoadingError("AdapterNotFound", 9, "adapter not found", e0.UndefinedAdapter, 8);
        e0 e0Var2 = e0.IncorrectAdunit;
        AdTypeNotSupportedInAdapter = new LoadingError("AdTypeNotSupportedInAdapter", 10, "ad type not supported in adapter", e0Var2, 9);
        Canceled = new LoadingError("Canceled", 11, "ad request canceled", e0.Canceled, 2);
        IncorrectAdunit = new LoadingError("IncorrectAdunit", 12, "incorrect adunit", e0Var2, 2);
        IncorrectCreative = new LoadingError("IncorrectCreative", 13, "incorrect creative", e0.IncorrectCreative, 4);
        ShowFailed = new LoadingError("ShowFailed", 14, "show failed", e0Var, 4);
        $VALUES = $values();
    }

    private LoadingError(String str, int i, String str2, e0 e0Var, int i2) {
        this.description = str2;
        this.requestResult = e0Var;
        this.code = i2;
    }

    public static LoadingError valueOf(String str) {
        return (LoadingError) Enum.valueOf(LoadingError.class, str);
    }

    public static LoadingError[] values() {
        return (LoadingError[]) $VALUES.clone();
    }

    public final int getCode() {
        return this.code;
    }

    public final e0 getRequestResult() {
        return this.requestResult;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.description;
    }
}
