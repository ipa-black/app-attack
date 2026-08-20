.class final Lcom/criteo/publisher/k0/e$a;
.super Ljava/lang/Object;
.source "LiveBidRequestSender.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/criteo/publisher/k0/e;->a(Lcom/criteo/publisher/w;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/criteo/publisher/w;


# direct methods
.method constructor <init>(Lcom/criteo/publisher/w;)V
    .locals 0

    iput-object p1, p0, Lcom/criteo/publisher/k0/e$a;->a:Lcom/criteo/publisher/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/criteo/publisher/k0/e$a;->a:Lcom/criteo/publisher/w;

    invoke-virtual {v0}, Lcom/criteo/publisher/w;->a()V

    return-void
.end method
