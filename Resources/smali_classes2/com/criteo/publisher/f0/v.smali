.class public Lcom/criteo/publisher/f0/v;
.super Ljava/lang/Object;
.source "MetricSendingQueueConfiguration.kt"

# interfaces
.implements Lcom/criteo/publisher/f0/a0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/criteo/publisher/f0/a0<",
        "Lcom/criteo/publisher/f0/n;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "Lcom/criteo/publisher/f0/n;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/criteo/publisher/n0/g;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/n0/g;)V
    .locals 1

    const-string v0, "buildConfigWrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/f0/v;->b:Lcom/criteo/publisher/n0/g;

    .line 30
    const-class p1, Lcom/criteo/publisher/f0/n;

    iput-object p1, p0, Lcom/criteo/publisher/f0/v;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/criteo/publisher/f0/v;->b:Lcom/criteo/publisher/n0/g;

    invoke-virtual {v0}, Lcom/criteo/publisher/n0/g;->h()I

    move-result v0

    return v0
.end method

.method public b()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/criteo/publisher/f0/n;",
            ">;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/criteo/publisher/f0/v;->a:Ljava/lang/Class;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/criteo/publisher/f0/v;->b:Lcom/criteo/publisher/n0/g;

    invoke-virtual {v0}, Lcom/criteo/publisher/n0/g;->k()I

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/criteo/publisher/f0/v;->b:Lcom/criteo/publisher/n0/g;

    invoke-virtual {v0}, Lcom/criteo/publisher/n0/g;->f()Ljava/lang/String;

    move-result-object v0

    const-string v1, "buildConfigWrapper.csmQueueFilename"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
