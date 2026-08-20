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
/* compiled from: AutoValue_MetricRequest.java */
/* loaded from: classes2.dex */
public final class f extends b {
    /* JADX INFO: Access modifiers changed from: package-private */
    public f(List<t.a> list, String str, int i) {
        super(list, str, i);
    }

    /* compiled from: AutoValue_MetricRequest.java */
    /* loaded from: classes2.dex */
    static final class a extends TypeAdapter<t> {

        /* renamed from: a  reason: collision with root package name */
        private volatile TypeAdapter<List<t.a>> f8773a;

        /* renamed from: b  reason: collision with root package name */
        private volatile TypeAdapter<String> f8774b;

        /* renamed from: c  reason: collision with root package name */
        private volatile TypeAdapter<Integer> f8775c;

        /* renamed from: d  reason: collision with root package name */
        private final Gson f8776d;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Gson gson) {
            this.f8776d = gson;
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public void write(JsonWriter jsonWriter, t tVar) throws IOException {
            if (tVar == null) {
                jsonWriter.nullValue();
                return;
            }
            jsonWriter.beginObject();
            jsonWriter.name("feedbacks");
            if (tVar.a() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<List<t.a>> typeAdapter = this.f8773a;
                if (typeAdapter == null) {
                    typeAdapter = this.f8776d.getAdapter(TypeToken.getParameterized(List.class, t.a.class));
                    this.f8773a = typeAdapter;
                }
                typeAdapter.write(jsonWriter, tVar.a());
            }
            jsonWriter.name("wrapper_version");
            if (tVar.c() == null) {
                jsonWriter.nullValue();
            } else {
                TypeAdapter<String> typeAdapter2 = this.f8774b;
                if (typeAdapter2 == null) {
                    typeAdapter2 = this.f8776d.getAdapter(String.class);
                    this.f8774b = typeAdapter2;
                }
                typeAdapter2.write(jsonWriter, tVar.c());
            }
            jsonWriter.name("profile_id");
            TypeAdapter<Integer> typeAdapter3 = this.f8775c;
            if (typeAdapter3 == null) {
                typeAdapter3 = this.f8776d.getAdapter(Integer.class);
                this.f8775c = typeAdapter3;
            }
            typeAdapter3.write(jsonWriter, Integer.valueOf(tVar.b()));
            jsonWriter.endObject();
        }

        @Override // com.google.gson.TypeAdapter
        /* renamed from: a */
        public t read(JsonReader jsonReader) throws IOException {
            List<t.a> list = null;
            if (jsonReader.peek() == JsonToken.NULL) {
                jsonReader.nextNull();
                return null;
            }
            jsonReader.beginObject();
            int i = 0;
            String str = null;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (jsonReader.peek() == JsonToken.NULL) {
                    jsonReader.nextNull();
                } else {
                    nextName.hashCode();
                    if (nextName.equals("wrapper_version")) {
                        TypeAdapter<String> typeAdapter = this.f8774b;
                        if (typeAdapter == null) {
                            typeAdapter = this.f8776d.getAdapter(String.class);
                            this.f8774b = typeAdapter;
                        }
                        str = typeAdapter.read(jsonReader);
                    } else if (nextName.equals("profile_id")) {
                        TypeAdapter<Integer> typeAdapter2 = this.f8775c;
                        if (typeAdapter2 == null) {
                            typeAdapter2 = this.f8776d.getAdapter(Integer.class);
                            this.f8775c = typeAdapter2;
                        }
                        i = typeAdapter2.read(jsonReader).intValue();
                    } else if ("feedbacks".equals(nextName)) {
                        TypeAdapter<List<t.a>> typeAdapter3 = this.f8773a;
                        if (typeAdapter3 == null) {
                            typeAdapter3 = this.f8776d.getAdapter(TypeToken.getParameterized(List.class, t.a.class));
                            this.f8773a = typeAdapter3;
                        }
                        list = typeAdapter3.read(jsonReader);
                    } else {
                        jsonReader.skipValue();
                    }
                }
            }
            jsonReader.endObject();
            return new f(list, str, i);
        }

        public String toString() {
            return "TypeAdapter(MetricRequest)";
        }
    }
}
