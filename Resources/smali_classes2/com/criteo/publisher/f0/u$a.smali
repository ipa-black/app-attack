.class public final Lcom/criteo/publisher/f0/u$a;
.super Ljava/lang/Object;
.source "MetricSendingQueue.kt"

# interfaces
.implements Lcom/criteo/publisher/f0/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/criteo/publisher/f0/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/criteo/publisher/f0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/criteo/publisher/f0/k<",
            "Lcom/criteo/publisher/f0/n;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/f0/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/criteo/publisher/f0/k<",
            "Lcom/criteo/publisher/f0/n;",
            ">;)V"
        }
    .end annotation

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/f0/u$a;->a:Lcom/criteo/publisher/f0/k;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/criteo/publisher/f0/u$a;->a:Lcom/criteo/publisher/f0/k;

    invoke-interface {v0}, Lcom/criteo/publisher/f0/k;->a()I

    move-result v0

    return v0
.end method

.method public a(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/f0/n;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lcom/criteo/publisher/f0/u$a;->a:Lcom/criteo/publisher/f0/k;

    invoke-interface {v0, p1}, Lcom/criteo/publisher/f0/k;->a(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/criteo/publisher/f0/n;)Z
    .locals 1

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lcom/criteo/publisher/f0/u$a;->a:Lcom/criteo/publisher/f0/k;

    invoke-interface {v0, p1}, Lcom/criteo/publisher/f0/k;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Z
    .locals 0

    .line 20
    check-cast p1, Lcom/criteo/publisher/f0/n;

    invoke-virtual {p0, p1}, Lcom/criteo/publisher/f0/u$a;->a(Lcom/criteo/publisher/f0/n;)Z

    move-result p1

    return p1
.end method
