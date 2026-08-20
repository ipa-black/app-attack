package com.criteo.publisher.logging;

import com.google.gson.annotations.SerializedName;
import com.unity3d.ads.metadata.MediationMetaData;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
/* compiled from: RemoteLogRecords.kt */
@Metadata(bv = {1, 0, 3}, d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\f\b\u0097\b\u0018\u0000:\u0003\u001d\u001e\u001fB\u001d\u0012\u0006\u0010\b\u001a\u00020\u0001\u0012\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0002\u001a\u00020\u0001HÆ\u0003¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J*\u0010\n\u001a\u00020\u00002\b\b\u0002\u0010\b\u001a\u00020\u00012\u000e\b\u0002\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fHÖ\u0003¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0015\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016R\u001c\u0010\b\u001a\u00020\u00018\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\b\u0010\u0017\u001a\u0004\b\u0018\u0010\u0003R\"\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0016@\u0017X\u0097\u0004¢\u0006\f\n\u0004\b\t\u0010\u0019\u001a\u0004\b\u001a\u0010\u0007¨\u0006 "}, d2 = {"Lcom/criteo/publisher/logging/RemoteLogRecords;", "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;", "component1", "()Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;", "", "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogRecord;", "component2", "()Ljava/util/List;", "context", "logRecords", "copy", "(Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;Ljava/util/List;)Lcom/criteo/publisher/logging/RemoteLogRecords;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;", "getContext", "Ljava/util/List;", "getLogRecords", "<init>", "(Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogContext;Ljava/util/List;)V", "RemoteLogContext", "RemoteLogLevel", "RemoteLogRecord", "publisher-sdk_release"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2.dex */
public class RemoteLogRecords {
    @SerializedName("context")

    /* renamed from: a  reason: collision with root package name */
    private final a f8944a;
    @SerializedName("errors")

    /* renamed from: b  reason: collision with root package name */
    private final List<b> f8945b;

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof RemoteLogRecords) {
                RemoteLogRecords remoteLogRecords = (RemoteLogRecords) obj;
                return Intrinsics.areEqual(a(), remoteLogRecords.a()) && Intrinsics.areEqual(b(), remoteLogRecords.b());
            }
            return false;
        }
        return true;
    }

    public int hashCode() {
        a a2 = a();
        int hashCode = (a2 != null ? a2.hashCode() : 0) * 31;
        List<b> b2 = b();
        return hashCode + (b2 != null ? b2.hashCode() : 0);
    }

    public String toString() {
        return "RemoteLogRecords(context=" + a() + ", logRecords=" + b() + ")";
    }

    public RemoteLogRecords(a context, List<b> logRecords) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        Intrinsics.checkParameterIsNotNull(logRecords, "logRecords");
        this.f8944a = context;
        this.f8945b = logRecords;
    }

    public a a() {
        return this.f8944a;
    }

    public List<b> b() {
        return this.f8945b;
    }

    /* compiled from: RemoteLogRecords.kt */
    /* loaded from: classes2.dex */
    public static final class b {
        @SerializedName("errorType")

        /* renamed from: a  reason: collision with root package name */
        private final RemoteLogLevel f8954a;
        @SerializedName("messages")

        /* renamed from: b  reason: collision with root package name */
        private final List<String> f8955b;

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof b) {
                    b bVar = (b) obj;
                    return Intrinsics.areEqual(this.f8954a, bVar.f8954a) && Intrinsics.areEqual(this.f8955b, bVar.f8955b);
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            RemoteLogLevel remoteLogLevel = this.f8954a;
            int hashCode = (remoteLogLevel != null ? remoteLogLevel.hashCode() : 0) * 31;
            List<String> list = this.f8955b;
            return hashCode + (list != null ? list.hashCode() : 0);
        }

        public String toString() {
            return "RemoteLogRecord(level=" + this.f8954a + ", messages=" + this.f8955b + ")";
        }

        public b(RemoteLogLevel level, List<String> messages) {
            Intrinsics.checkParameterIsNotNull(level, "level");
            Intrinsics.checkParameterIsNotNull(messages, "messages");
            this.f8954a = level;
            this.f8955b = messages;
        }
    }

    /* compiled from: RemoteLogRecords.kt */
    /* loaded from: classes2.dex */
    public static class a {
        @SerializedName(MediationMetaData.KEY_VERSION)

        /* renamed from: a  reason: collision with root package name */
        private final String f8946a;
        @SerializedName("bundleId")

        /* renamed from: b  reason: collision with root package name */
        private final String f8947b;
        @SerializedName("deviceId")

        /* renamed from: c  reason: collision with root package name */
        private String f8948c;
        @SerializedName("sessionId")

        /* renamed from: d  reason: collision with root package name */
        private final String f8949d;
        @SerializedName("profileId")

        /* renamed from: e  reason: collision with root package name */
        private final int f8950e;
        @SerializedName("exception")

        /* renamed from: f  reason: collision with root package name */
        private final String f8951f;
        @SerializedName("logId")

        /* renamed from: g  reason: collision with root package name */
        private final String f8952g;
        @SerializedName("deviceOs")

        /* renamed from: h  reason: collision with root package name */
        private final String f8953h;

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof a) {
                    a aVar = (a) obj;
                    return Intrinsics.areEqual(h(), aVar.h()) && Intrinsics.areEqual(a(), aVar.a()) && Intrinsics.areEqual(b(), aVar.b()) && Intrinsics.areEqual(g(), aVar.g()) && f() == aVar.f() && Intrinsics.areEqual(d(), aVar.d()) && Intrinsics.areEqual(e(), aVar.e()) && Intrinsics.areEqual(c(), aVar.c());
                }
                return false;
            }
            return true;
        }

        public int hashCode() {
            String h2 = h();
            int hashCode = (h2 != null ? h2.hashCode() : 0) * 31;
            String a2 = a();
            int hashCode2 = (hashCode + (a2 != null ? a2.hashCode() : 0)) * 31;
            String b2 = b();
            int hashCode3 = (hashCode2 + (b2 != null ? b2.hashCode() : 0)) * 31;
            String g2 = g();
            int hashCode4 = (((hashCode3 + (g2 != null ? g2.hashCode() : 0)) * 31) + f()) * 31;
            String d2 = d();
            int hashCode5 = (hashCode4 + (d2 != null ? d2.hashCode() : 0)) * 31;
            String e2 = e();
            int hashCode6 = (hashCode5 + (e2 != null ? e2.hashCode() : 0)) * 31;
            String c2 = c();
            return hashCode6 + (c2 != null ? c2.hashCode() : 0);
        }

        public String toString() {
            return "RemoteLogContext(version=" + h() + ", bundleId=" + a() + ", deviceId=" + b() + ", sessionId=" + g() + ", profileId=" + f() + ", exceptionType=" + d() + ", logId=" + e() + ", deviceOs=" + c() + ")";
        }

        public a(String version, String bundleId, String str, String sessionId, int i, String str2, String str3, String str4) {
            Intrinsics.checkParameterIsNotNull(version, "version");
            Intrinsics.checkParameterIsNotNull(bundleId, "bundleId");
            Intrinsics.checkParameterIsNotNull(sessionId, "sessionId");
            this.f8946a = version;
            this.f8947b = bundleId;
            this.f8948c = str;
            this.f8949d = sessionId;
            this.f8950e = i;
            this.f8951f = str2;
            this.f8952g = str3;
            this.f8953h = str4;
        }

        public String h() {
            return this.f8946a;
        }

        public String a() {
            return this.f8947b;
        }

        public void a(String str) {
            this.f8948c = str;
        }

        public String b() {
            return this.f8948c;
        }

        public String g() {
            return this.f8949d;
        }

        public int f() {
            return this.f8950e;
        }

        public String d() {
            return this.f8951f;
        }

        public String e() {
            return this.f8952g;
        }

        public String c() {
            return this.f8953h;
        }
    }

    /* compiled from: RemoteLogRecords.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0087\u0001\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/criteo/publisher/logging/RemoteLogRecords$RemoteLogLevel;", "Ljava/lang/Enum;", "<init>", "(Ljava/lang/String;I)V", "Companion", "DEBUG", "INFO", "WARNING", "ERROR", "NONE", "publisher-sdk_release"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2.dex */
    public enum RemoteLogLevel {
        DEBUG,
        INFO,
        WARNING,
        ERROR,
        NONE;
        
        public static final a Companion = new a(null);

        /* compiled from: RemoteLogRecords.kt */
        /* loaded from: classes2.dex */
        public static final class a {
            private a() {
            }

            public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final RemoteLogLevel a(int i) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            if (i != 6) {
                                return null;
                            }
                            return RemoteLogLevel.ERROR;
                        }
                        return RemoteLogLevel.WARNING;
                    }
                    return RemoteLogLevel.INFO;
                }
                return RemoteLogLevel.DEBUG;
            }
        }
    }
}
