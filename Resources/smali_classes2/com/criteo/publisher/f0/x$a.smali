.class Lcom/criteo/publisher/f0/x$a;
.super Ljava/lang/Object;
.source "MetricSendingQueueProducer.java"

# interfaces
.implements Lcom/criteo/publisher/f0/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/f0/x;->a(Lcom/criteo/publisher/f0/r;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/f0/x;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/f0/x;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/criteo/publisher/f0/x$a;->a:Lcom/criteo/publisher/f0/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/criteo/publisher/f0/n;)Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/criteo/publisher/f0/x$a;->a:Lcom/criteo/publisher/f0/x;

    invoke-static {v0}, Lcom/criteo/publisher/f0/x;->a(Lcom/criteo/publisher/f0/x;)Lcom/criteo/publisher/f0/u;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/criteo/publisher/f0/k;->a(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
