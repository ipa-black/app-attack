.class public final synthetic Lcom/criteo/publisher/j$a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/criteo/publisher/BidResponseListener;

.field public final synthetic f$1:Lcom/criteo/publisher/Bid;


# direct methods
.method public synthetic constructor <init>(Lcom/criteo/publisher/BidResponseListener;Lcom/criteo/publisher/Bid;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/j$a$$ExternalSyntheticLambda0;->f$0:Lcom/criteo/publisher/BidResponseListener;

    iput-object p2, p0, Lcom/criteo/publisher/j$a$$ExternalSyntheticLambda0;->f$1:Lcom/criteo/publisher/Bid;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/criteo/publisher/j$a$$ExternalSyntheticLambda0;->f$0:Lcom/criteo/publisher/BidResponseListener;

    iget-object v1, p0, Lcom/criteo/publisher/j$a$$ExternalSyntheticLambda0;->f$1:Lcom/criteo/publisher/Bid;

    invoke-static {v0, v1}, Lcom/criteo/publisher/j$a;->$r8$lambda$dU3o1NzRfmVJCV1rJFsE_vQq7f8(Lcom/criteo/publisher/BidResponseListener;Lcom/criteo/publisher/Bid;)V

    return-void
.end method
