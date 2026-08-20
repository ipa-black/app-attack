.class public final synthetic Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lrx/functions/Action1;


# instance fields
.field public final synthetic f$0:Landroid/view/MenuItem;


# direct methods
.method public synthetic constructor <init>(Landroid/view/MenuItem;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$$ExternalSyntheticLambda1;->f$0:Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public final call(Ljava/lang/Object;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder$$ExternalSyntheticLambda1;->f$0:Landroid/view/MenuItem;

    check-cast p1, Lcom/appsgeyser/sdk/inapp/models/statuses/Status;

    invoke-static {v0, p1}, Lcom/appsgeyser/multiTabApp/ui/menu/MenuItemsHolder;->lambda$_applyItemsVisibility$2(Landroid/view/MenuItem;Lcom/appsgeyser/sdk/inapp/models/statuses/Status;)V

    return-void
.end method
