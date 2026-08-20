.class public final synthetic Lcom/appsgeyser/sdk/datasdk/PermissionsRequester$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/util/HashSet;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester$$ExternalSyntheticLambda0;->f$1:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester$$ExternalSyntheticLambda0;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester$$ExternalSyntheticLambda0;->f$1:Ljava/util/HashSet;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/appsgeyser/sdk/datasdk/PermissionsRequester;->lambda$requestNotificationPermissions$0(Landroid/app/Activity;Ljava/util/HashSet;Ljava/lang/String;)V

    return-void
.end method
