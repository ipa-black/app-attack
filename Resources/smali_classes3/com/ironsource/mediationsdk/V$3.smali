.class final Lcom/ironsource/mediationsdk/V$3;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ironsource/mediationsdk/V;->b(Lcom/ironsource/mediationsdk/X;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/V;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/V;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/V$3;->a:Lcom/ironsource/mediationsdk/V;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/mediationsdk/V$3;->a:Lcom/ironsource/mediationsdk/V;

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/V;->e()V

    return-void
.end method
