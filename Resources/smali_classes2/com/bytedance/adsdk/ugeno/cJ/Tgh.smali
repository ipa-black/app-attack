.class public Lcom/bytedance/adsdk/ugeno/cJ/Tgh;
.super Ljava/lang/Object;
.source "UGCompoundButtonCompat.java"


# static fields
.field private static Qhi:Ljava/lang/reflect/Field;

.field private static cJ:Z


# direct methods
.method public static Qhi(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 29
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method
