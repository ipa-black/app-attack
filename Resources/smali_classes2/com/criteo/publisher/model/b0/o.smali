.class public abstract Lcom/criteo/publisher/model/b0/o;
.super Ljava/lang/Object;
.source "NativeImage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/criteo/publisher/model/b0/o;",
            ">;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/criteo/publisher/model/b0/i$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/model/b0/i$a;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method abstract a()Ljava/net/URL;
.end method
