.class public abstract Lcom/criteo/publisher/l0/d/c;
.super Ljava/lang/Object;
.source "GdprData.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)Lcom/criteo/publisher/l0/d/c;
    .locals 1

    .line 33
    new-instance v0, Lcom/criteo/publisher/l0/d/b;

    invoke-direct {v0, p0, p1, p2}, Lcom/criteo/publisher/l0/d/b;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public static a(Lcom/google/gson/Gson;)Lcom/google/gson/TypeAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            ")",
            "Lcom/google/gson/TypeAdapter<",
            "Lcom/criteo/publisher/l0/d/c;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lcom/criteo/publisher/l0/d/b$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/l0/d/b$a;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Ljava/lang/Boolean;
.end method

.method public abstract c()Ljava/lang/Integer;
.end method
