.class final Lcom/ironsource/mediationsdk/M$c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ironsource/mediationsdk/H$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ironsource/mediationsdk/M$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/ironsource/mediationsdk/M$c;


# direct methods
.method constructor <init>(Lcom/ironsource/mediationsdk/M$c;)V
    .locals 0

    iput-object p1, p0, Lcom/ironsource/mediationsdk/M$c$1;->a:Lcom/ironsource/mediationsdk/M$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M$c$1;->a:Lcom/ironsource/mediationsdk/M$c;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ironsource/mediationsdk/M$c;->a:Z

    iget-object v0, p0, Lcom/ironsource/mediationsdk/M$c$1;->a:Lcom/ironsource/mediationsdk/M$c;

    iput-object p1, v0, Lcom/ironsource/mediationsdk/M$c;->b:Ljava/lang/String;

    return-void
.end method
