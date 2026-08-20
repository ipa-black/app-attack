.class final Lcom/ironsource/sdk/controller/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/sdk/controller/p;-><init>(Ljava/lang/String;Lcom/ironsource/environment/e/a;Lcom/ironsource/sdk/controller/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/sdk/controller/e;

.field private synthetic b:Lcom/ironsource/sdk/controller/p;


# direct methods
.method constructor <init>(Lcom/ironsource/sdk/controller/p;Lcom/ironsource/sdk/controller/e;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/sdk/controller/p$1;->b:Lcom/ironsource/sdk/controller/p;

    iput-object p2, p0, Lcom/ironsource/sdk/controller/p$1;->a:Lcom/ironsource/sdk/controller/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/sdk/controller/p$1;->a:Lcom/ironsource/sdk/controller/e;

    invoke-interface {v0}, Lcom/ironsource/sdk/controller/e;->b()V

    return-void
.end method
