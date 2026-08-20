package com.criteo.publisher.model;

import com.criteo.publisher.logging.RemoteLogRecords;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_RemoteConfigResponse.java */
/* loaded from: classes2.dex */
public final class l extends e {
    /* JADX INFO: Access modifiers changed from: package-private */
    public l(Boolean bool, String str, String str2, String str3, String str4, Boolean bool2, Boolean bool3, Integer num, Boolean bool4, RemoteLogRecords.RemoteLogLevel remoteLogLevel) {
        super(bool, str, str2, str3, str4, bool2, bool3, num, bool4, remoteLogLevel);
    }

    /* compiled from: AutoValue_RemoteConfigResponse.java */
    /* loaded from: classes2.dex */
    static final class a extends TypeAdapter<y> {

        /* renamed from: a  reason: collision with root package name */
        private volatile TypeAdapter<Boolean> f9142a;

        /* renamed from: b  reason: collision with root package name */
        private volatile TypeAdapter<String> f9143b;

        /* renamed from: c  reason: collision with root package name */
        private volatile TypeAdapter<Integer> f9144c;

        /* renamed from: d  reason: collision with root package name */
        private volatile TypeAdapter<RemoteLogRecords.RemoteLogLevel> f9145d;

        /* renamed from: e  reason: collision with root package name */
        private final Gson f9146e;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Gson gson) {
            this.f9146e = gson;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public void write(JsonWriter jsonWriter, y yVar) throws IOException {
            if (yVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("killSwitch");
            if (yVar.g() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<Boolean> typeAdapter = this.f9142a;
                if (typeAdapter == null) {
                    typeAdapter = this.f9146e.getAdapter(Boolean.class);
                    this.f9142a = typeAdapter;
                }
                typeAdapter.write(jsonWriter, yVar.g());
            }
            jsonWriter.name("AndroidDisplayUrlMacro");
            if (yVar.e() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter2 = this.f9143b;
                if (typeAdapter2 == null) {
                    typeAdapter2 = this.f9146e.getAdapter(String.class);
                    this.f9143b = typeAdapter2;
                }
                typeAdapter2.write(jsonWriter, yVar.e());
            }
            jsonWriter.name("AndroidAdTagUrlMode");
            if (yVar.d() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter3 = this.f9143b;
                if (typeAdapter3 == null) {
                    typeAdapter3 = this.f9146e.getAdapter(String.class);
                    this.f9143b = typeAdapter3;
                }
                typeAdapter3.write(jsonWriter, yVar.d());
            }
            jsonWriter.name("AndroidAdTagDataMacro");
            if (yVar.b() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter4 = this.f9143b;
                if (typeAdapter4 == null) {
                    typeAdapter4 = this.f9146e.getAdapter(String.class);
                    this.f9143b = typeAdapter4;
                }
                typeAdapter4.write(jsonWriter, yVar.b());
            }
            jsonWriter.name("AndroidAdTagDataMode");
            if (yVar.c() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter5 = this.f9143b;
                if (typeAdapter5 == null) {
                    typeAdapter5 = this.f9146e.getAdapter(String.class);
                    this.f9143b = typeAdapter5;
                }
                typeAdapter5.write(jsonWriter, yVar.c());
            }
            jsonWriter.name("csmEnabled");
            if (yVar.f() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<Boolean> typeAdapter6 = this.f9142a;
                if (typeAdapter6 == null) {
                    typeAdapter6 = this.f9146e.getAdapter(Boolean.class);
                    this.f9142a = typeAdapter6;
                }
                typeAdapter6.write(jsonWriter, yVar.f());
            }
            jsonWriter.name("liveBiddingEnabled");
            if (yVar.h() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<Boolean> typeAdapter7 = this.f9142a;
                if (typeAdapter7 == null) {
                    typeAdapter7 = this.f9146e.getAdapter(Boolean.class);
                    this.f9142a = typeAdapter7;
                }
                typeAdapter7.write(jsonWriter, yVar.h());
            }
            jsonWriter.name("liveBiddingTimeBudgetInMillis");
            if (yVar.i() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<Integer> typeAdapter8 = this.f9144c;
                if (typeAdapter8 == null) {
                    typeAdapter8 = this.f9146e.getAdapter(Integer.class);
                    this.f9144c = typeAdapter8;
                }
                typeAdapter8.write(jsonWriter, yVar.i());
            }
            jsonWriter.name("prefetchOnInitEnabled");
            if (yVar.j() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<Boolean> typeAdapter9 = this.f9142a;
                if (typeAdapter9 == null) {
                    typeAdapter9 = this.f9146e.getAdapter(Boolean.class);
                    this.f9142a = typeAdapter9;
                }
                typeAdapter9.write(jsonWriter, yVar.j());
            }
            jsonWriter.name("remoteLogLevel");
            if (yVar.k() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<RemoteLogRecords.RemoteLogLevel> typeAdapter10 = this.f9145d;
                if (typeAdapter10 == null) {
                    typeAdapter10 = this.f9146e.getAdapter(RemoteLogRecords.RemoteLogLevel.class);
                    this.f9145d = typeAdapter10;
                }
                typeAdapter10.write(jsonWriter, yVar.k());
            }
            jsonWriter.endObject();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public y read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            Boolean bool = null;
            String str = null;
            String str2 = null;
            String str3 = null;
            String str4 = null;
            Boolean bool2 = null;
            Boolean bool3 = null;
            Integer num = null;
            Boolean bool4 = null;
            RemoteLogRecords.RemoteLogLevel remoteLogLevel = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    char c2 = 65535;
                    switch (nextName.hashCode()) {
                        case -648432651:
                            if (nextName.equals("AndroidAdTagDataMode")) {
                                c2 = 0;
                                break;
                            }
                            break;
                        case 28088106:
                            if (nextName.equals("AndroidAdTagUrlMode")) {
                                c2 = 1;
                                break;
                            }
                            break;
                        case 1373006778:
                            if (nextName.equals("AndroidAdTagDataMacro")) {
                                c2 = 2;
                                break;
                            }
                            break;
                        case 1395208240:
                            if (nextName.equals("AndroidDisplayUrlMacro")) {
                                c2 = 3;
                                break;
                            }
                            break;
                    }
                    switch (c2) {
                        case 0:
                            TypeAdapter<String> typeAdapter = this.f9143b;
                            if (typeAdapter == null) {
                                typeAdapter = this.f9146e.getAdapter(String.class);
                                this.f9143b = typeAdapter;
                            }
                            str4 = typeAdapter.read(jsonReader);
                            continue;
                        case 1:
                            TypeAdapter<String> typeAdapter2 = this.f9143b;
                            if (typeAdapter2 == null) {
                                typeAdapter2 = this.f9146e.getAdapter(String.class);
                                this.f9143b = typeAdapter2;
                            }
                            str2 = typeAdapter2.read(jsonReader);
                            continue;
                        case 2:
                            TypeAdapter<String> typeAdapter3 = this.f9143b;
                            if (typeAdapter3 == null) {
                                typeAdapter3 = this.f9146e.getAdapter(String.class);
                                this.f9143b = typeAdapter3;
                            }
                            str3 = typeAdapter3.read(jsonReader);
                            continue;
                        case 3:
                            TypeAdapter<String> typeAdapter4 = this.f9143b;
                            if (typeAdapter4 == null) {
                                typeAdapter4 = this.f9146e.getAdapter(String.class);
                                this.f9143b = typeAdapter4;
                            }
                            str = typeAdapter4.read(jsonReader);
                            continue;
                        default:
                            if ("killSwitch".equals(nextName)) {
                                TypeAdapter<Boolean> typeAdapter5 = this.f9142a;
                                if (typeAdapter5 == null) {
                                    typeAdapter5 = this.f9146e.getAdapter(Boolean.class);
                                    this.f9142a = typeAdapter5;
                                }
                                bool = typeAdapter5.read(jsonReader);
                                break;
                            } else if ("csmEnabled".equals(nextName)) {
                                TypeAdapter<Boolean> typeAdapter6 = this.f9142a;
                                if (typeAdapter6 == null) {
                                    typeAdapter6 = this.f9146e.getAdapter(Boolean.class);
                                    this.f9142a = typeAdapter6;
                                }
                                bool2 = typeAdapter6.read(jsonReader);
                                break;
                            } else if ("liveBiddingEnabled".equals(nextName)) {
                                TypeAdapter<Boolean> typeAdapter7 = this.f9142a;
                                if (typeAdapter7 == null) {
                                    typeAdapter7 = this.f9146e.getAdapter(Boolean.class);
                                    this.f9142a = typeAdapter7;
                                }
                                bool3 = typeAdapter7.read(jsonReader);
                                break;
                            } else if ("liveBiddingTimeBudgetInMillis".equals(nextName)) {
                                TypeAdapter<Integer> typeAdapter8 = this.f9144c;
                                if (typeAdapter8 == null) {
                                    typeAdapter8 = this.f9146e.getAdapter(Integer.class);
                                    this.f9144c = typeAdapter8;
                                }
                                num = typeAdapter8.read(jsonReader);
                                break;
                            } else if ("prefetchOnInitEnabled".equals(nextName)) {
                                TypeAdapter<Boolean> typeAdapter9 = this.f9142a;
                                if (typeAdapter9 == null) {
                                    typeAdapter9 = this.f9146e.getAdapter(Boolean.class);
                                    this.f9142a = typeAdapter9;
                                }
                                bool4 = typeAdapter9.read(jsonReader);
                                break;
                            } else if ("remoteLogLevel".equals(nextName)) {
                                TypeAdapter<RemoteLogRecords.RemoteLogLevel> typeAdapter10 = this.f9145d;
                                if (typeAdapter10 == null) {
                                    typeAdapter10 = this.f9146e.getAdapter(RemoteLogRecords.RemoteLogLevel.class);
                                    this.f9145d = typeAdapter10;
                                }
                                remoteLogLevel = typeAdapter10.read(jsonReader);
                                break;
                            } else {
                                jsonReader.skipValue();
                                continue;
                            }
                    }
                }
            }
            jsonReader.endObject();
            return new l(bool, str, str2, str3, str4, bool2, bool3, num, bool4, remoteLogLevel);
        }

        public String toString() {
            return "TypeAdapter(RemoteConfigResponse)";
        }
    }
}
