.class public final synthetic Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/appsgeyser/sdk/inapp/models/statuses/Status;

.field public final synthetic f$1:Landroid/view/MenuItem;


# direct methods
.method public synthetic constructor <init>(Lcom/appsgeyser/sdk/inapp/models/statuses/Status;Landroid/view/MenuItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$$ExternalSyntheticLambda2;->f$0:Lcom/appsgeyser/sdk/inapp/models/statuses/Status;

    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$$ExternalSyntheticLambda2;->f$1:Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$$ExternalSyntheticLambda2;->f$0:Lcom/appsgeyser/sdk/inapp/models/statuses/Status;

    iget-object v1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$$ExternalSyntheticLambda2;->f$1:Landroid/view/MenuItem;

    invoke-static {v0, v1}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->lambda$_applyItemsVisibility$1(Lcom/appsgeyser/sdk/inapp/models/statuses/Status;Landroid/view/MenuItem;)V

    return-void
.end method
