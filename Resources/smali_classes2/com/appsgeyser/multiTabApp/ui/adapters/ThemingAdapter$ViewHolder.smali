.class public Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ThemingAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewHolder"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder$ViewHolderRadioButtonClicks;
    }
.end annotation


# instance fields
.field colorAccentImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00f9
    .end annotation
.end field

.field colorPrimaryDarkImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00fb
    .end annotation
.end field

.field colorPrimaryImageView:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00fa
    .end annotation
.end field

.field onClickListener:Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder$ViewHolderRadioButtonClicks;

.field presetSelectedRadioButton:Landroid/widget/RadioButton;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0a00fc
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder$ViewHolderRadioButtonClicks;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 85
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 86
    iput-object p2, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->onClickListener:Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder$ViewHolderRadioButtonClicks;

    return-void
.end method


# virtual methods
.method themeSelected()V
    .locals 2
    .annotation runtime Lbutterknife/OnClick;
        value = {
            0x7f0a00f8
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->onClickListener:Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder$ViewHolderRadioButtonClicks;

    invoke-virtual {p0}, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/appsgeyser/multiTabApp/ui/adapters/ThemingAdapter$ViewHolder$ViewHolderRadioButtonClicks;->onRadioButtonClicked(I)V

    return-void
.end method
