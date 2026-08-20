.class public abstract Lcom/criteo/publisher/f0/t$b;
.super Ljava/lang/Object;
.source "MetricRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/f0/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/Integer;Z)Lcom/criteo/publisher/f0/t$b;
    .locals 1

    .line 140
    new-instance v0, Lcom/criteo/publisher/f0/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/criteo/publisher/f0/h;-><init>(Ljava/lang/String;Ljava/lang/Integer;Z)V

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
            "Lcom/criteo/publisher/f0/t$b;",
            ">;"
        }
    .end annotation

    .line 144
    new-instance v0, Lcom/criteo/publisher/f0/h$a;

    invoke-direct {v0, p0}, Lcom/criteo/publisher/f0/h$a;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method abstract a()Z
.end method

.method abstract b()Ljava/lang/String;
.end method

.method abstract c()Ljava/lang/Integer;
.end method
