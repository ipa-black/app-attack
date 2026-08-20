.class public final synthetic Lcom/criteo/publisher/s$$ExternalSyntheticLambda57;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic f$0:Lcom/criteo/publisher/s;


# direct methods
.method public synthetic constructor <init>(Lcom/criteo/publisher/s;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/criteo/publisher/s$$ExternalSyntheticLambda57;->f$0:Lcom/criteo/publisher/s;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/criteo/publisher/s$$ExternalSyntheticLambda57;->f$0:Lcom/criteo/publisher/s;

    invoke-virtual {v0}, Lcom/criteo/publisher/s;->W0()Lcom/criteo/publisher/logging/j;

    move-result-object v0

    check-cast v0, Lcom/criteo/publisher/logging/d;

    return-object v0
.end method
