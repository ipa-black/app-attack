package com.yandex.metrica.plugins;

import com.yandex.metrica.impl.ob.A2;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes5.dex */
public class PluginErrorDetails {

    /* renamed from: a  reason: collision with root package name */
    private final String f16287a;

    /* renamed from: b  reason: collision with root package name */
    private final String f16288b;

    /* renamed from: c  reason: collision with root package name */
    private final List<StackTraceItem> f16289c;

    /* renamed from: d  reason: collision with root package name */
    private final String f16290d;

    /* renamed from: e  reason: collision with root package name */
    private final String f16291e;

    /* renamed from: f  reason: collision with root package name */
    private final Map<String, String> f16292f;

    /* loaded from: classes5.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        private String f16293a;

        /* renamed from: b  reason: collision with root package name */
        private String f16294b;

        /* renamed from: c  reason: collision with root package name */
        private List<StackTraceItem> f16295c;

        /* renamed from: d  reason: collision with root package name */
        private String f16296d;

        /* renamed from: e  reason: collision with root package name */
        private String f16297e;

        /* renamed from: f  reason: collision with root package name */
        private Map<String, String> f16298f;

        public PluginErrorDetails build() {
            String str = this.f16293a;
            String str2 = this.f16294b;
            List<StackTraceItem> list = this.f16295c;
            List<StackTraceItem> arrayList = new ArrayList<>();
            if (list != null) {
                arrayList = list;
            }
            String str3 = this.f16296d;
            String str4 = this.f16297e;
            Map<String, String> map = this.f16298f;
            Map<String, String> hashMap = new HashMap<>();
            if (map != null) {
                hashMap = map;
            }
            return new PluginErrorDetails(str, str2, arrayList, str3, str4, hashMap);
        }

        public Builder withExceptionClass(String str) {
            this.f16293a = str;
            return this;
        }

        public Builder withMessage(String str) {
            this.f16294b = str;
            return this;
        }

        public Builder withPlatform(String str) {
            this.f16296d = str;
            return this;
        }

        public Builder withPluginEnvironment(Map<String, String> map) {
            this.f16298f = map;
            return this;
        }

        public Builder withStacktrace(List<StackTraceItem> list) {
            this.f16295c = list;
            return this;
        }

        public Builder withVirtualMachineVersion(String str) {
            this.f16297e = str;
            return this;
        }
    }

    /* loaded from: classes5.dex */
    public static final class Platform {
        public static final String CORDOVA = "cordova";
        public static final String FLUTTER = "flutter";
        public static final String NATIVE = "native";
        public static final String REACT_NATIVE = "react_native";
        public static final String UNITY = "unity";
        public static final String XAMARIN = "xamarin";
    }

    public String getExceptionClass() {
        return this.f16287a;
    }

    public String getMessage() {
        return this.f16288b;
    }

    public String getPlatform() {
        return this.f16290d;
    }

    public Map<String, String> getPluginEnvironment() {
        return this.f16292f;
    }

    public List<StackTraceItem> getStacktrace() {
        return this.f16289c;
    }

    public String getVirtualMachineVersion() {
        return this.f16291e;
    }

    private PluginErrorDetails(String str, String str2, List<StackTraceItem> list, String str3, String str4, Map<String, String> map) {
        this.f16287a = str;
        this.f16288b = str2;
        this.f16289c = new ArrayList(list);
        this.f16290d = str3;
        this.f16291e = str4;
        this.f16292f = A2.a(A2.a((Map) map));
    }
}
