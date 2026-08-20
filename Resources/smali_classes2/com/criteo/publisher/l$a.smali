.class Lcom/criteo/publisher/l$a;
.super Ljava/lang/Object;
.source "CriteoBannerEventController.java"

# interfaces
.implements Lcom/criteo/publisher/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/l;->a(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/l;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/l;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/criteo/publisher/l$a;->a:Lcom/criteo/publisher/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/criteo/publisher/l$a;->a:Lcom/criteo/publisher/l;

    sget-object v1, Lcom/criteo/publisher/p;->b:Lcom/criteo/publisher/p;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/l;->a(Lcom/criteo/publisher/p;)V

    return-void
.end method

.method public a(Lcom/criteo/publisher/model/s;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/criteo/publisher/l$a;->a:Lcom/criteo/publisher/l;

    sget-object v1, Lcom/criteo/publisher/p;->a:Lcom/criteo/publisher/p;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/l;->a(Lcom/criteo/publisher/p;)V

    .line 75
    iget-object v0, p0, Lcom/criteo/publisher/l$a;->a:Lcom/criteo/publisher/l;

    invoke-virtual {p1}, Lcom/criteo/publisher/model/s;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/l;->a(Ljava/lang/String;)V

    return-void
.end method
