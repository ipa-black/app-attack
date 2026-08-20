.class Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;
.super Landroid/view/animation/Animation;
.source "TopNavigationWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->changeUrlBarRightMarginAnimated(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

.field final synthetic val$newMarginDp:I

.field final synthetic val$oldMarginDp:I


# direct methods
.method constructor <init>(Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;II)V
    .locals 0

    .line 333
    iput-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iput p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;->val$oldMarginDp:I

    iput p3, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;->val$newMarginDp:I

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 338
    iget-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object p2, p2, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->searchBackground:Landroid/widget/LinearLayout;

    .line 339
    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 341
    iget v0, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;->val$oldMarginDp:I

    int-to-float v1, v0

    iget v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;->val$newMarginDp:I

    sub-int/2addr v2, v0

    const/4 v0, 0x1

    mul-int/2addr v0, v2

    int-to-float v0, v0

    mul-float/2addr v0, p1

    add-float/2addr v1, v0

    float-to-int p1, v1

    .line 343
    iget v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v1, p2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget-object v2, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    .line 344
    invoke-virtual {v2, p1}, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->dpToPx(I)I

    move-result p1

    iget v2, p2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 343
    invoke-virtual {p2, v0, v1, p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 345
    iget-object p1, p0, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget$9;->this$0:Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;

    iget-object p1, p1, Lcom/appsgeyser/multiTabApp/ui/navigationwidget/TopNavigationWidget;->searchBackground:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
