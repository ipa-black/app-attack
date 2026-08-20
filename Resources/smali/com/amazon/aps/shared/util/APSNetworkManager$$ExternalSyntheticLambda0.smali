.class public final synthetic Lcom/amazon/aps/shared/util/APSNetworkManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/amazon/aps/shared/util/APSNetworkManager;

.field public final synthetic f$1:Lcom/amazon/aps/shared/analytics/APSEvent;


# direct methods
.method public synthetic constructor <init>(Lcom/amazon/aps/shared/util/APSNetworkManager;Lcom/amazon/aps/shared/analytics/APSEvent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/aps/shared/util/APSNetworkManager$$ExternalSyntheticLambda0;->f$0:Lcom/amazon/aps/shared/util/APSNetworkManager;

    iput-object p2, p0, Lcom/amazon/aps/shared/util/APSNetworkManager$$ExternalSyntheticLambda0;->f$1:Lcom/amazon/aps/shared/analytics/APSEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/amazon/aps/shared/util/APSNetworkManager$$ExternalSyntheticLambda0;->f$0:Lcom/amazon/aps/shared/util/APSNetworkManager;

    iget-object v1, p0, Lcom/amazon/aps/shared/util/APSNetworkManager$$ExternalSyntheticLambda0;->f$1:Lcom/amazon/aps/shared/analytics/APSEvent;

    invoke-virtual {v0, v1}, Lcom/amazon/aps/shared/util/APSNetworkManager;->lambda$uploadFatalEvent$0$com-amazon-aps-shared-util-APSNetworkManager(Lcom/amazon/aps/shared/analytics/APSEvent;)V

    return-void
.end method
