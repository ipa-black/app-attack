package com.criteo.publisher.f0;

import com.criteo.publisher.f0.t;
import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonToken;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AutoValue_MetricRequest_MetricRequestFeedback.java */
/* loaded from: classes2.dex */
public final class g extends c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public g(List<t.b> list, Long l, boolean z, long j, Long l2, String str) {
        super(list, l, z, j, l2, str);
    }

    /* compiled from: AutoValue_MetricRequest_MetricRequestFeedback.java */
    /* loaded from: classes2.dex */
    static final class a extends TypeAdapter<t.a> {

        /* renamed from: a  reason: collision with root package name */
        private volatile TypeAdapter<List<t.b>> f8777a;

        /* renamed from: b  reason: collision with root package name */
        private volatile TypeAdapter<Long> f8778b;

        /* renamed from: c  reason: collision with root package name */
        private volatile TypeAdapter<Boolean> f8779c;

        /* renamed from: d  reason: collision with root package name */
        private volatile TypeAdapter<Long> f8780d;

        /* renamed from: e  reason: collision with root package name */
        private volatile TypeAdapter<String> f8781e;

        /* renamed from: f  reason: collision with root package name */
        private final Gson f8782f;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Gson gson) {
            this.f8782f = gson;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public void write(JsonWriter jsonWriter, t.a aVar) throws IOException {
            if (aVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("slots");
            if (aVar.e() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<List<t.b>> typeAdapter = this.f8777a;
                if (typeAdapter == null) {
                    typeAdapter = this.f8782f.getAdapter(TypeToken.getParameterized(List.class, t.b.class));
                    this.f8777a = typeAdapter;
                }
                typeAdapter.write(jsonWriter, aVar.e());
            }
            jsonWriter.name("elapsed");
            if (aVar.c() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<Long> typeAdapter2 = this.f8778b;
                if (typeAdapter2 == null) {
                    typeAdapter2 = this.f8782f.getAdapter(Long.class);
                    this.f8778b = typeAdapter2;
                }
                typeAdapter2.write(jsonWriter, aVar.c());
            }
            jsonWriter.name("isTimeout");
            TypeAdapter<Boolean> typeAdapter3 = this.f8779c;
            if (typeAdapter3 == null) {
                typeAdapter3 = this.f8782f.getAdapter(Boolean.class);
                this.f8779c = typeAdapter3;
            }
            typeAdapter3.write(jsonWriter, Boolean.valueOf(aVar.f()));
            jsonWriter.name("cdbCallStartElapsed");
            TypeAdapter<Long> typeAdapter4 = this.f8780d;
            if (typeAdapter4 == null) {
                typeAdapter4 = this.f8782f.getAdapter(Long.class);
                this.f8780d = typeAdapter4;
            }
            typeAdapter4.write(jsonWriter, Long.valueOf(aVar.b()));
            jsonWriter.name("cdbCallEndElapsed");
            if (aVar.a() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<Long> typeAdapter5 = this.f8778b;
                if (typeAdapter5 == null) {
                    typeAdapter5 = this.f8782f.getAdapter(Long.class);
                    this.f8778b = typeAdapter5;
                }
                typeAdapter5.write(jsonWriter, aVar.a());
            }
            jsonWriter.name("requestGroupId");
            if (aVar.d() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter6 = this.f8781e;
                if (typeAdapter6 == null) {
                    typeAdapter6 = this.f8782f.getAdapter(String.class);
                    this.f8781e = typeAdapter6;
                }
                typeAdapter6.write(jsonWriter, aVar.d());
            }
            jsonWriter.endObject();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public t.a read(JsonReader jsonReader) throws IOException {
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            boolean z = false;
            List<t.b> list = null;
            Long l = null;
            Long l2 = null;
            String str = null;
            long j = 0;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if (nextName.equals("isTimeout")) {
                        TypeAdapter<Boolean> typeAdapter = this.f8779c;
                        if (typeAdapter == null) {
                            typeAdapter = this.f8782f.getAdapter(Boolean.class);
                            this.f8779c = typeAdapter;
                        }
                        z = typeAdapter.read(jsonReader).booleanValue();
                    } else if ("slots".equals(nextName)) {
                        TypeAdapter<List<t.b>> typeAdapter2 = this.f8777a;
                        if (typeAdapter2 == null) {
                            typeAdapter2 = this.f8782f.getAdapter(TypeToken.getParameterized(List.class, t.b.class));
                            this.f8777a = typeAdapter2;
                        }
                        list = typeAdapter2.read(jsonReader);
                    } else if ("elapsed".equals(nextName)) {
                        TypeAdapter<Long> typeAdapter3 = this.f8778b;
                        if (typeAdapter3 == null) {
                            typeAdapter3 = this.f8782f.getAdapter(Long.class);
                            this.f8778b = typeAdapter3;
                        }
                        l = typeAdapter3.read(jsonReader);
                    } else if ("cdbCallStartElapsed".equals(nextName)) {
                        TypeAdapter<Long> typeAdapter4 = this.f8780d;
                        if (typeAdapter4 == null) {
                            typeAdapter4 = this.f8782f.getAdapter(Long.class);
                            this.f8780d = typeAdapter4;
                        }
                        j = typeAdapter4.read(jsonReader).longValue();
                    } else if ("cdbCallEndElapsed".equals(nextName)) {
                        TypeAdapter<Long> typeAdapter5 = this.f8778b;
                        if (typeAdapter5 == null) {
                            typeAdapter5 = this.f8782f.getAdapter(Long.class);
                            this.f8778b = typeAdapter5;
                        }
                        l2 = typeAdapter5.read(jsonReader);
                    } else if ("requestGroupId".equals(nextName)) {
                        TypeAdapter<String> typeAdapter6 = this.f8781e;
                        if (typeAdapter6 == null) {
                            typeAdapter6 = this.f8782f.getAdapter(String.class);
                            this.f8781e = typeAdapter6;
                        }
                        str = typeAdapter6.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new g(list, l, z, j, l2, str);
        }

        public String toString() {
            return "TypeAdapter(MetricRequest.MetricRequestFeedback)";
        }
    }
}
