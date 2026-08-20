.class Lcom/bytedance/sdk/openadsdk/utils/ac$Qhi;
.super Ljava/lang/Object;
.source "AdmobOverlayHelper.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/utils/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Qhi"
.end annotation


# instance fields
.field private final Qhi:Landroid/graphics/drawable/Drawable;

.field private ac:I

.field private cJ:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/ac$Qhi;->Qhi:Landroid/graphics/drawable/Drawable;

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 158
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/utils/ac$Qhi;->cJ:I

    if-ne p4, p1, :cond_0

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/utils/ac$Qhi;->ac:I

    if-ne p5, p1, :cond_0

    return-void

    .line 161
    :cond_0
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/utils/ac$Qhi;->cJ:I

    .line 162
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/utils/ac$Qhi;->ac:I

    .line 163
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/ac$Qhi;->Qhi:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method
