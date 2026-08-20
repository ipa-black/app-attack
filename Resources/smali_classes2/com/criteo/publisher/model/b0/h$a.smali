.class final Lcom/criteo/publisher/model/b0/h$a;
.super Lcom/google/gson/TypeAdapter;
.source "AutoValue_NativeAssets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/model/b0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter<",
        "Lcom/criteo/publisher/model/b0/n;",
        ">;"
    }
.end annotation


# instance fields
.field private volatile a:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/r;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile b:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/criteo/publisher/model/b0/m;",
            ">;"
        }
    .end annotation
.end field

.field private volatile c:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/criteo/publisher/model/b0/q;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter<",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/b0/p;",
            ">;>;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/gson/Gson;


# direct methods
.method constructor <init>(Lcom/google/gson/Gson;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/criteo/publisher/model/b0/h$a;->e:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/stream/JsonReader;)Lcom/criteo/publisher/model/b0/n;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v0, v1, :cond_0

    .line 85
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    const/4 p1, 0x0

    return-object p1

    .line 88
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 89
    invoke-static {}, Lcom/criteo/publisher/model/b0/n;->a()Lcom/criteo/publisher/model/b0/n$a;

    move-result-object v0

    .line 90
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 91
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v2

    sget-object v3, Lcom/google/gson/stream/JsonToken;->NULL:Lcom/google/gson/stream/JsonToken;

    if-ne v2, v3, :cond_1

    .line 93
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextNull()V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const-string v2, "products"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_8

    const-string v2, "impressionPixels"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 114
    const-string v2, "advertiser"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 115
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/h$a;->b:Lcom/google/gson/TypeAdapter;

    if-nez v1, :cond_2

    .line 117
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/h$a;->e:Lcom/google/gson/Gson;

    const-class v2, Lcom/criteo/publisher/model/b0/m;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/model/b0/h$a;->b:Lcom/google/gson/TypeAdapter;

    .line 119
    :cond_2
    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/model/b0/m;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/model/b0/n$a;->a(Lcom/criteo/publisher/model/b0/m;)Lcom/criteo/publisher/model/b0/n$a;

    goto :goto_0

    .line 122
    :cond_3
    const-string v2, "privacy"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 123
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/h$a;->c:Lcom/google/gson/TypeAdapter;

    if-nez v1, :cond_4

    .line 125
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/h$a;->e:Lcom/google/gson/Gson;

    const-class v2, Lcom/criteo/publisher/model/b0/q;

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/model/b0/h$a;->c:Lcom/google/gson/TypeAdapter;

    .line 127
    :cond_4
    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/criteo/publisher/model/b0/q;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/model/b0/n$a;->a(Lcom/criteo/publisher/model/b0/q;)Lcom/criteo/publisher/model/b0/n$a;

    goto :goto_0

    .line 130
    :cond_5
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->skipValue()V

    goto :goto_0

    .line 106
    :cond_6
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/h$a;->d:Lcom/google/gson/TypeAdapter;

    if-nez v1, :cond_7

    .line 108
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/h$a;->e:Lcom/google/gson/Gson;

    new-array v2, v4, [Ljava/lang/reflect/Type;

    const-class v4, Lcom/criteo/publisher/model/b0/p;

    aput-object v4, v2, v3

    const-class v3, Ljava/util/List;

    invoke-static {v3, v2}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/model/b0/h$a;->d:Lcom/google/gson/TypeAdapter;

    .line 110
    :cond_7
    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/model/b0/n$a;->b(Ljava/util/List;)Lcom/criteo/publisher/model/b0/n$a;

    goto/16 :goto_0

    .line 98
    :cond_8
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/h$a;->a:Lcom/google/gson/TypeAdapter;

    if-nez v1, :cond_9

    .line 100
    iget-object v1, p0, Lcom/criteo/publisher/model/b0/h$a;->e:Lcom/google/gson/Gson;

    new-array v2, v4, [Ljava/lang/reflect/Type;

    const-class v4, Lcom/criteo/publisher/model/b0/r;

    aput-object v4, v2, v3

    const-class v3, Ljava/util/List;

    invoke-static {v3, v2}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/criteo/publisher/model/b0/h$a;->a:Lcom/google/gson/TypeAdapter;

    .line 102
    :cond_9
    invoke-virtual {v1, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/model/b0/n$a;->a(Ljava/util/List;)Lcom/criteo/publisher/model/b0/n$a;

    goto/16 :goto_0

    .line 134
    :cond_a
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 135
    invoke-virtual {v0}, Lcom/criteo/publisher/model/b0/n$a;->b()Lcom/criteo/publisher/model/b0/n;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/google/gson/stream/JsonWriter;Lcom/criteo/publisher/model/b0/n;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->beginObject()Lcom/google/gson/stream/JsonWriter;

    .line 39
    const-string v0, "products"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 40
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/n;->h()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 41
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_0

    .line 43
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/h$a;->a:Lcom/google/gson/TypeAdapter;

    if-nez v0, :cond_2

    .line 45
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/h$a;->e:Lcom/google/gson/Gson;

    new-array v3, v2, [Ljava/lang/reflect/Type;

    const-class v4, Lcom/criteo/publisher/model/b0/r;

    aput-object v4, v3, v1

    const-class v4, Ljava/util/List;

    invoke-static {v4, v3}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/b0/h$a;->a:Lcom/google/gson/TypeAdapter;

    .line 47
    :cond_2
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/n;->h()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 49
    :goto_0
    const-string v0, "advertiser"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 50
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/n;->b()Lcom/criteo/publisher/model/b0/m;

    move-result-object v0

    if-nez v0, :cond_3

    .line 51
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_1

    .line 53
    :cond_3
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/h$a;->b:Lcom/google/gson/TypeAdapter;

    if-nez v0, :cond_4

    .line 55
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/h$a;->e:Lcom/google/gson/Gson;

    const-class v3, Lcom/criteo/publisher/model/b0/m;

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/b0/h$a;->b:Lcom/google/gson/TypeAdapter;

    .line 57
    :cond_4
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/n;->b()Lcom/criteo/publisher/model/b0/m;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 59
    :goto_1
    const-string v0, "privacy"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 60
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/n;->j()Lcom/criteo/publisher/model/b0/q;

    move-result-object v0

    if-nez v0, :cond_5

    .line 61
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_2

    .line 63
    :cond_5
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/h$a;->c:Lcom/google/gson/TypeAdapter;

    if-nez v0, :cond_6

    .line 65
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/h$a;->e:Lcom/google/gson/Gson;

    const-class v3, Lcom/criteo/publisher/model/b0/q;

    invoke-virtual {v0, v3}, Lcom/google/gson/Gson;->getAdapter(Ljava/lang/Class;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/b0/h$a;->c:Lcom/google/gson/TypeAdapter;

    .line 67
    :cond_6
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/n;->j()Lcom/criteo/publisher/model/b0/q;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 69
    :goto_2
    const-string v0, "impressionPixels"

    invoke-virtual {p1, v0}, Lcom/google/gson/stream/JsonWriter;->name(Ljava/lang/String;)Lcom/google/gson/stream/JsonWriter;

    .line 70
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/n;->i()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    .line 71
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->nullValue()Lcom/google/gson/stream/JsonWriter;

    goto :goto_3

    .line 73
    :cond_7
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/h$a;->d:Lcom/google/gson/TypeAdapter;

    if-nez v0, :cond_8

    .line 75
    iget-object v0, p0, Lcom/criteo/publisher/model/b0/h$a;->e:Lcom/google/gson/Gson;

    new-array v2, v2, [Ljava/lang/reflect/Type;

    const-class v3, Lcom/criteo/publisher/model/b0/p;

    aput-object v3, v2, v1

    const-class v1, Ljava/util/List;

    invoke-static {v1, v2}, Lcom/google/gson/reflect/TypeToken;->getParameterized(Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/model/b0/h$a;->d:Lcom/google/gson/TypeAdapter;

    .line 77
    :cond_8
    invoke-virtual {p2}, Lcom/criteo/publisher/model/b0/n;->i()Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 79
    :goto_3
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonWriter;->endObject()Lcom/google/gson/stream/JsonWriter;

    return-void
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/model/b0/h$a;->a(Lcom/google/gson/stream/JsonReader;)Lcom/criteo/publisher/model/b0/n;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 139
    const-string v0, "TypeAdapter(NativeAssets)"

    return-object v0
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    check-cast p2, Lcom/criteo/publisher/model/b0/n;

    invoke-virtual {p0, p1, p2}, Lcom/criteo/publisher/model/b0/h$a;->a(Lcom/google/gson/stream/JsonWriter;Lcom/criteo/publisher/model/b0/n;)V

    return-void
.end method
