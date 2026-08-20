.class Lcom/criteo/publisher/n$a;
.super Ljava/lang/Object;
.source "CriteoInterstitialEventController.java"

# interfaces
.implements Lcom/criteo/publisher/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/n;->a(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/n;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/n;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/criteo/publisher/n$a;->a:Lcom/criteo/publisher/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/criteo/publisher/n$a;->a:Lcom/criteo/publisher/n;

    invoke-virtual {v0}, Lcom/criteo/publisher/n;->b()V

    .line 88
    iget-object v0, p0, Lcom/criteo/publisher/n$a;->a:Lcom/criteo/publisher/n;

    invoke-static {v0}, Lcom/criteo/publisher/n;->a(Lcom/criteo/publisher/n;)Lcom/criteo/publisher/model/a0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/model/a0;->a()V

    return-void
.end method

.method public a(Lcom/criteo/publisher/model/s;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/criteo/publisher/n$a;->a:Lcom/criteo/publisher/n;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/n;->a(Ljava/lang/String;)V

    return-void
.end method
