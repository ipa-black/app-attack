.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;
.super Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;
.source "NativeExpressView.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/cJ/hm;
.implements Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/fl;
.implements Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi$Qhi;
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ABk;


# static fields
.field public static qMt:I = 0x1f4


# instance fields
.field protected ABk:Z

.field private CJ:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

.field public CQU:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

.field private Dq:Lcom/bytedance/sdk/component/adexpress/cJ/HzH;

.field Dww:Z

.field public EBS:Z

.field private EGK:F

.field protected Eh:Lcom/bytedance/sdk/component/adexpress/cJ/cJ;

.field private final FQ:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

.field private final HLI:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/bytedance/sdk/openadsdk/core/cJ/ac$Qhi;",
            ">;"
        }
    .end annotation
.end field

.field private Hf:Lcom/bytedance/sdk/component/adexpress/cJ/ROR;

.field HzH:Z

.field private Jma:Ljava/lang/String;

.field private final MND:Ljava/lang/Runnable;

.field protected MQ:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private NBs:Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;

.field private NFd:Ljava/lang/String;

.field private PAe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

.field private Qe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

.field private Qhi:Z

.field private ROR:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;

.field private ReL:F

.field protected final Sf:Landroid/content/Context;

.field private Tgh:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

.field private VnT:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/VastBannerBackupView;

.field protected WAv:Lcom/bytedance/sdk/openadsdk/AdSlot;

.field private YB:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

.field public aP:Lcom/bytedance/sdk/component/adexpress/cJ/fl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/adexpress/cJ/fl<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private ac:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

.field bxS:I

.field private cJ:I

.field private cjC:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/adexpress/cJ/Gm;",
            ">;"
        }
    .end annotation
.end field

.field private dI:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

.field private dIT:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

.field private dVA:Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

.field private es:Z

.field private fl:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

.field private gga:J

.field protected hm:Ljava/lang/String;

.field protected hpZ:Z

.field protected iMK:Z

.field private final ip:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field private final jPH:Ljava/lang/Runnable;

.field private js:Ljava/lang/String;

.field protected kYc:I

.field private lB:F

.field private lG:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

.field private oU:F

.field private ots:I

.field protected pA:Lcom/bytedance/sdk/component/adexpress/cJ/ac;

.field pM:J

.field private pv:F

.field private sDy:F

.field protected tP:Ljava/lang/String;

.field private final xyz:Ljava/lang/Runnable;

.field private yN:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;

.field public zc:Landroid/widget/FrameLayout;

.field private zjb:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

.field private zn:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)V
    .locals 4

    .line 252
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qhi:Z

    const/4 v1, 0x0

    .line 113
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cJ:I

    .line 116
    const-string v2, "embeded_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    const/4 v2, 0x0

    .line 123
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->NFd:Ljava/lang/String;

    .line 125
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->iMK:Z

    .line 131
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hpZ:Z

    .line 136
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->HzH:Z

    const/4 v2, -0x1

    .line 137
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->kYc:I

    .line 140
    const-string v3, ""

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Jma:Ljava/lang/String;

    .line 161
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->EBS:Z

    .line 162
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->es:Z

    .line 163
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->bxS:I

    .line 168
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/Sf;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->CQU:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    const-wide/16 v2, 0x0

    .line 170
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->pM:J

    .line 175
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->FQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 200
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ip:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 211
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->xyz:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->jPH:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->MND:Ljava/lang/Runnable;

    const/16 v0, 0x8

    .line 587
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ots:I

    .line 665
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->HLI:Landroid/util/SparseArray;

    const/high16 v0, -0x40800000    # -1.0f

    .line 666
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->oU:F

    .line 667
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->pv:F

    .line 668
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ReL:F

    .line 669
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->EGK:F

    .line 670
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->gga:J

    .line 253
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    .line 254
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Sf:Landroid/content/Context;

    .line 255
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 256
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->WAv:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 257
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->EBS:Z

    .line 258
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Tgh()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;ZZ)V
    .locals 4

    .line 263
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 112
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qhi:Z

    const/4 v1, 0x0

    .line 113
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cJ:I

    .line 116
    const-string v2, "embeded_ad"

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    const/4 v2, 0x0

    .line 123
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->NFd:Ljava/lang/String;

    .line 125
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->iMK:Z

    .line 131
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hpZ:Z

    .line 136
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->HzH:Z

    const/4 v2, -0x1

    .line 137
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->kYc:I

    .line 140
    const-string v3, ""

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Jma:Ljava/lang/String;

    .line 161
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->EBS:Z

    .line 162
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->es:Z

    .line 163
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->bxS:I

    .line 168
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/Sf;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->CQU:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    const-wide/16 v2, 0x0

    .line 170
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->pM:J

    .line 175
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->FQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 200
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ip:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 211
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->xyz:Ljava/lang/Runnable;

    .line 221
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->jPH:Ljava/lang/Runnable;

    .line 227
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->MND:Ljava/lang/Runnable;

    const/16 v0, 0x8

    .line 587
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ots:I

    .line 665
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->HLI:Landroid/util/SparseArray;

    const/high16 v0, -0x40800000    # -1.0f

    .line 666
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->oU:F

    .line 667
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->pv:F

    .line 668
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ReL:F

    .line 669
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->EGK:F

    .line 670
    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->gga:J

    .line 264
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    .line 265
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Sf:Landroid/content/Context;

    .line 266
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 267
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->WAv:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 268
    iput-boolean p5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->EBS:Z

    .line 269
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->es:Z

    .line 270
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Tgh()V

    return-void
.end method

.method static synthetic CJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)F
    .locals 0

    .line 107
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->sDy:F

    return p0
.end method

.method private CQU()Z
    .locals 2

    .line 1187
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    const-string v1, "fullscreen_interstitial_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    const-string v1, "rewarded_video"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "open_ad"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    .line 1188
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->cJ(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    const-string v1, "embeded_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private Dww()V
    .locals 2

    .line 969
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cjC:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 972
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private EBS()Z
    .locals 1

    .line 884
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v0

    return v0
.end method

.method private HzH()V
    .locals 7

    .line 437
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->sqa()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->IC()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/pA;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dIT:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zjb:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/pA;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;)V

    .line 440
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/cJ/ROR;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Sf:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zjb:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/ROR;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;Lcom/bytedance/sdk/component/adexpress/cJ/Qhi;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Hf:Lcom/bytedance/sdk/component/adexpress/cJ/ROR;

    .line 441
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cjC:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/cJ/ABk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cjC:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dVA:Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/cJ/ABk;-><init>(Ljava/util/List;Lcom/bytedance/sdk/component/adexpress/cJ/WAv;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->YB:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    return-void

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->CQU()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 446
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->kYc()V

    return-void

    .line 449
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->tP()V

    .line 450
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Sf:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zjb:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dIT:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->lG:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    .line 451
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Sf:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zjb:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;Lcom/bytedance/sdk/component/adexpress/fl/Qhi;Lcom/bytedance/sdk/component/adexpress/cJ/hm;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Dq:Lcom/bytedance/sdk/component/adexpress/cJ/HzH;

    .line 452
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cjC:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 454
    const-string v1, "NativeExpressView"

    const-string v2, "NativeExpressView dynamicRender fail"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 456
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/pA;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dIT:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zjb:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/pA;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;)V

    .line 458
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/cJ/ROR;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Sf:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zjb:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/ROR;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;Lcom/bytedance/sdk/component/adexpress/cJ/Qhi;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Hf:Lcom/bytedance/sdk/component/adexpress/cJ/ROR;

    .line 459
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cjC:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/cJ/ABk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cjC:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dVA:Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/cJ/ABk;-><init>(Ljava/util/List;Lcom/bytedance/sdk/component/adexpress/cJ/WAv;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->YB:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    return-void
.end method

.method private MQ()V
    .locals 15

    .line 492
    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/ac/Qhi/Qhi;

    invoke-direct {v7}, Lcom/bytedance/sdk/openadsdk/core/ac/Qhi/Qhi;-><init>()V

    .line 493
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cJ:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    .line 508
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Sf:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zjb:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dIT:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->lG:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    .line 509
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Sf:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zjb:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;Lcom/bytedance/sdk/component/adexpress/fl/Qhi;Lcom/bytedance/sdk/component/adexpress/cJ/hm;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Dq:Lcom/bytedance/sdk/component/adexpress/cJ/HzH;

    .line 510
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cjC:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 502
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Sf:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-boolean v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->EBS:Z

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zjb:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    move-object v6, v1

    check-cast v6, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;

    move-object v2, v0

    move-object v7, p0

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;ZLcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dI:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    .line 503
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Sf:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dI:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zjb:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;Lcom/bytedance/sdk/component/adexpress/cJ/hm;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->NBs:Lcom/bytedance/sdk/openadsdk/core/ugen/component/fl;

    .line 504
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cjC:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 495
    :cond_1
    new-instance v8, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/hm;

    invoke-direct {v8}, Lcom/bytedance/sdk/component/adexpress/dynamic/CJ/hm;-><init>()V

    .line 496
    new-instance v9, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Sf:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zjb:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dIT:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-boolean v13, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->EBS:Z

    new-instance v14, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Sf:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dIT:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->EBS:Z

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zjb:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    move-object v0, v14

    move-object v4, v8

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/fl;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/CJ/WAv;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;Lcom/bytedance/sdk/component/adexpress/dynamic/fl/Qhi;)V

    move-object v0, v9

    move-object v1, v10

    move-object v2, v11

    move-object v3, v12

    move v4, v13

    move-object v5, v8

    move-object v6, p0

    move-object v8, v14

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;ZLcom/bytedance/sdk/component/adexpress/dynamic/CJ/WAv;Lcom/bytedance/sdk/component/adexpress/cJ/hm;Lcom/bytedance/sdk/component/adexpress/dynamic/fl/Qhi;Lcom/bytedance/sdk/component/adexpress/dynamic/Qhi/Qhi;)V

    iput-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Eh:Lcom/bytedance/sdk/component/adexpress/cJ/cJ;

    .line 499
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cjC:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->yN:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;

    return-object p1
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Jma:Ljava/lang/String;

    return-object p1
.end method

.method public static Qhi(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x2

    .line 866
    :try_start_0
    new-array v0, v0, [I

    .line 867
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 868
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 869
    const-string v2, "width"

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 870
    const-string v2, "height"

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 871
    const-string p0, "left"

    const/4 v2, 0x0

    aget v2, v0, v2

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 872
    const-string p0, "top"

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {v1, p0, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->qMt()V

    return-void
.end method

.method private ROR()V
    .locals 3

    .line 312
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->es()Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;

    move-result-object v0

    .line 313
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    const-string v2, "embeded_ad"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->Gm()Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 318
    const-string v0, "width"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 319
    const-string v2, "height"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    int-to-float v1, v1

    .line 321
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->lB:F

    int-to-float v0, v0

    .line 322
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->sDy:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic ac(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->yN:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;

    return-object p0
.end method

.method private bxS()V
    .locals 2

    .line 958
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cjC:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 961
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)Ljava/lang/Runnable;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->xyz:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic fl(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)F
    .locals 0

    .line 107
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->lB:F

    return p0
.end method

.method private getAdSlotType()I
    .locals 6

    .line 918
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "interaction"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x4

    goto :goto_0

    :sswitch_1
    const-string v1, "fullscreen_interstitial_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v5, v2

    goto :goto_0

    :sswitch_2
    const-string v1, "open_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v5, v3

    goto :goto_0

    :sswitch_3
    const-string v1, "rewarded_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v5, v4

    goto :goto_0

    :sswitch_4
    const-string v1, "banner_ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    const/4 v0, 0x5

    return v0

    :pswitch_0
    return v3

    :pswitch_1
    const/16 v0, 0x8

    return v0

    :pswitch_2
    return v2

    :pswitch_3
    const/4 v0, 0x7

    return v0

    :pswitch_4
    return v4

    :sswitch_data_0
    .sparse-switch
        -0x65146dea -> :sswitch_4
        -0x514cfef6 -> :sswitch_3
        -0x4b4ad1c8 -> :sswitch_2
        -0x2d935a6e -> :sswitch_1
        0x6deace12 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private hpZ()V
    .locals 11

    .line 338
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/kYc;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/cJ/kYc;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->lG:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    .line 339
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->lG:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->NFd:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dVA:Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 343
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->es()Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->WAv()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "render_delay_time"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    :try_start_1
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->fl(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->NFd:Ljava/lang/String;

    invoke-interface {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->ABk(Ljava/lang/String;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v6, v3, :cond_0

    move v6, v3

    goto :goto_0

    :catch_0
    move-wide v4, v0

    :catch_1
    :cond_0
    move v6, v2

    .line 349
    :goto_0
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/16 v4, 0x2710

    .line 350
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 352
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getRenderTimeout()I

    move-result v4

    .line 355
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 356
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Tgh()D

    move-result-wide v7

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->EBS()I

    move-result v5

    int-to-double v9, v5

    mul-double/2addr v7, v9

    goto :goto_1

    :cond_1
    const-wide/16 v7, 0x0

    .line 358
    :goto_1
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->bxS:I

    const/4 v9, -0x1

    if-eq v5, v9, :cond_2

    double-to-int v9, v7

    if-ge v5, v9, :cond_2

    goto :goto_2

    :cond_2
    move v3, v2

    :goto_2
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Dww:Z

    .line 360
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 361
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;-><init>()V

    .line 362
    move-object v3, v2

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;->Qhi(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;

    .line 363
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dVA:Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    check-cast v3, Lcom/bytedance/adsdk/ugeno/core/HzH;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;->Qhi(Lcom/bytedance/adsdk/ugeno/core/HzH;)Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;

    .line 364
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->sDy:F

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;->Qhi(F)Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;

    .line 365
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->lB:F

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;->cJ(F)Lcom/bytedance/sdk/openadsdk/core/ugen/ac/Qhi$Qhi;

    goto :goto_3

    .line 368
    :cond_3
    new-instance v2, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;-><init>()V

    .line 370
    :goto_3
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    move-result-object v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 371
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->HLI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->cJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    move-result-object v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 372
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->bIO()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->ac(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    move-result-object v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 373
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->EGK()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->CJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    move-result-object v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dVA:Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    .line 374
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/WAv;)Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    move-result-object v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 375
    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->YD()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->CJ(I)Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    move-result-object v3

    .line 376
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->Qhi(I)Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 377
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->rB()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->cJ(Z)Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    move-result-object v3

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->es:Z

    .line 378
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->ac(Z)Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 379
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->aP()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->cJ(I)Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    move-result-object v3

    .line 380
    invoke-virtual {v3, v0, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->Qhi(J)Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 381
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->ip()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->ac(I)Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 382
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->Qhi(Ljava/util/Map;)Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    move-result-object v0

    .line 383
    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->CJ(Z)Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    move-result-object v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->bxS:I

    .line 384
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->fl(I)Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    move-result-object v0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Dww:Z

    .line 385
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->Qhi(Z)Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    move-result-object v0

    .line 386
    invoke-virtual {v0, v7, v8}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->Qhi(D)Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    move-result-object v0

    .line 387
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/HzH;->YD()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->DaO()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->Tgh(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    .line 388
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Tgh;)Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    .line 408
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->es()Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 410
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->ABk()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->fl(Z)Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;

    .line 412
    :cond_4
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)V

    .line 414
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;->Qhi()Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zjb:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    return-void
.end method

.method private kYc()V
    .locals 4

    .line 465
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->CQU()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cJ:I

    .line 467
    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->tP()V

    .line 468
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->MQ()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 470
    const-string v1, "NativeExpressView"

    const-string v2, "NativeExpressView dynamicRender fail"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 472
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->pM()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qhi:Z

    if-eqz v1, :cond_1

    .line 474
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/pA;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dIT:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zjb:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    invoke-direct {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/pA;-><init>(Landroid/view/View;Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;)V

    .line 476
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/cJ/ROR;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Sf:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zjb:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    invoke-direct {v1, v2, v3, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/ROR;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;Lcom/bytedance/sdk/component/adexpress/cJ/Qhi;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Hf:Lcom/bytedance/sdk/component/adexpress/cJ/ROR;

    .line 478
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cjC:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initRender: mRenderSequenceType is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cJ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInterceptors is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cjC:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 482
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/cJ/ABk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cjC:Ljava/util/List;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dVA:Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/cJ/ABk;-><init>(Ljava/util/List;Lcom/bytedance/sdk/component/adexpress/cJ/WAv;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->YB:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    return-void
.end method

.method private qMt()V
    .locals 4

    .line 635
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->FQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 636
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->CQU:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/sDy;->Qhi(Landroid/view/View;)F

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/cJ/Sf;->Qhi(JF)V

    :cond_0
    return-void
.end method

.method private tP()V
    .locals 1

    .line 486
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iMK;->fl()Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Gm;->Qhi()V

    :cond_0
    return-void
.end method


# virtual methods
.method public ABk()Z
    .locals 2

    .line 1118
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->aP:Lcom/bytedance/sdk/component/adexpress/cJ/fl;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/fl;->ac()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public CJ()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Gm()V
    .locals 3

    .line 987
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->PAe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    if-eqz v0, :cond_0

    .line 988
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->cJ()V

    .line 990
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->iMK()V

    .line 991
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->removeAllViews()V

    .line 992
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 993
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 995
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cjC:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 996
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/adexpress/cJ/Gm;

    .line 997
    invoke-interface {v1}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm;->Qhi()V

    goto :goto_0

    .line 1000
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;)V

    const/4 v0, 0x0

    .line 1001
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ac:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    .line 1002
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->CJ:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    .line 1003
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->WAv:Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 1004
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 1005
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->fl:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    .line 1006
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Tgh:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    .line 1007
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->pA:Lcom/bytedance/sdk/component/adexpress/cJ/ac;

    .line 1008
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ROR:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 1010
    const-string v1, "NativeExpressView"

    const-string v2, "detach error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public Qhi(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/tP;)Lorg/json/JSONObject;
    .locals 3

    .line 1135
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->aP:Lcom/bytedance/sdk/component/adexpress/cJ/fl;

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    .line 1137
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 1140
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getRenderEngineCacheType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1141
    const-string v1, "engine_version"

    if-eqz p2, :cond_1

    :try_start_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->es()Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->es()Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->ABk()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1142
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->es()Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tP$Qhi;->zc()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1144
    :cond_1
    const-string p2, "v1"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1146
    :goto_0
    const-string p2, "engine_type"

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 1148
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    :goto_1
    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public Qhi()V
    .locals 0

    return-void
.end method

.method public Qhi(I)V
    .locals 0

    return-void
.end method

.method public Qhi(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public Qhi(IZ)V
    .locals 2

    .line 610
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->HzH:Z

    .line 611
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->MND:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 612
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->jPH:Ljava/lang/Runnable;

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const-wide/16 v0, 0x32

    if-nez p1, :cond_0

    .line 614
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->jPH:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 616
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->MND:Ljava/lang/Runnable;

    invoke-virtual {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public Qhi(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ac;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 725
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "ClickCreativeListener"

    const-string v5, "trigger Class2 method1"

    invoke-static {v4, v5, v3}, Lcom/bytedance/sdk/openadsdk/utils/qMt;->Qhi(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, -0x1

    if-eq v2, v3, :cond_15

    if-nez p3, :cond_0

    goto/16 :goto_3

    .line 730
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 731
    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/model/bxS;->Gm(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v4

    const-string v5, "click_scence"

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    .line 732
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 734
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 736
    :goto_0
    move-object/from16 v4, p3

    check-cast v4, Lcom/bytedance/sdk/openadsdk/core/model/pA;

    .line 737
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Tgh:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    if-eqz v5, :cond_2

    .line 738
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getDynamicShowType()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;->CJ(I)V

    .line 739
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Tgh:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    invoke-virtual {v5, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;->Qhi(Ljava/util/Map;)V

    .line 741
    :cond_2
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ROR:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;

    if-eqz v5, :cond_3

    .line 742
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getDynamicShowType()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;->CJ(I)V

    .line 743
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ROR:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;

    invoke-virtual {v5, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;->Qhi(Ljava/util/Map;)V

    .line 745
    :cond_3
    iget v9, v4, Lcom/bytedance/sdk/openadsdk/core/model/pA;->Qhi:F

    .line 746
    iget v10, v4, Lcom/bytedance/sdk/openadsdk/core/model/pA;->cJ:F

    .line 747
    iget v11, v4, Lcom/bytedance/sdk/openadsdk/core/model/pA;->ac:F

    .line 748
    iget v12, v4, Lcom/bytedance/sdk/openadsdk/core/model/pA;->CJ:F

    .line 749
    iget-boolean v14, v4, Lcom/bytedance/sdk/openadsdk/core/model/pA;->pA:Z

    .line 751
    iget-object v3, v4, Lcom/bytedance/sdk/openadsdk/core/model/pA;->iMK:Landroid/util/SparseArray;

    if-eqz v3, :cond_4

    .line 752
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v5

    if-nez v5, :cond_5

    .line 753
    :cond_4
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->HLI:Landroid/util/SparseArray;

    :cond_5
    move-object v13, v3

    .line 756
    iget-object v3, v4, Lcom/bytedance/sdk/openadsdk/core/model/pA;->Gm:Ljava/lang/String;

    const/4 v5, 0x0

    if-nez v1, :cond_6

    move-object v8, v0

    goto :goto_1

    :cond_6
    if-eq v1, v0, :cond_7

    .line 761
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qhi(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v5

    :cond_7
    move-object v8, v1

    :goto_1
    if-eqz v4, :cond_8

    .line 764
    iput v2, v4, Lcom/bytedance/sdk/openadsdk/core/model/pA;->zc:I

    if-eqz v5, :cond_8

    .line 765
    iget-object v1, v4, Lcom/bytedance/sdk/openadsdk/core/model/pA;->ABk:Lorg/json/JSONObject;

    if-nez v1, :cond_8

    .line 766
    iput-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/model/pA;->ABk:Lorg/json/JSONObject;

    :cond_8
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_3

    .line 851
    :pswitch_0
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Sf:Landroid/content/Context;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 848
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qhi()V

    return-void

    .line 845
    :pswitch_2
    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->EBS:Z

    xor-int/2addr v1, v6

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qhi(Z)V

    return-void

    .line 815
    :pswitch_3
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zc:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_9

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 816
    invoke-static/range {v15 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 818
    :cond_9
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->kYc()I

    move-result v1

    if-ne v1, v6, :cond_a

    if-nez v14, :cond_a

    return-void

    .line 821
    :cond_a
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/js;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    .line 822
    const-string v1, "embeded_ad"

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->EBS()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ABk:Z

    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/js;->cJ(Lcom/bytedance/sdk/openadsdk/core/model/tP;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 824
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Tgh:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    if-eqz v1, :cond_c

    .line 825
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/pA;)V

    .line 826
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Tgh:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;->Qhi(Ljava/lang/String;)V

    .line 827
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Tgh:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    invoke-virtual/range {v7 .. v14}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;->Qhi(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    goto :goto_2

    .line 834
    :cond_b
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ROR:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;

    if-eqz v1, :cond_c

    .line 835
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/pA;)V

    .line 836
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ROR:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;->Qhi(Ljava/lang/String;)V

    .line 837
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ROR:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;

    invoke-virtual/range {v7 .. v14}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;->Qhi(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    .line 840
    :cond_c
    :goto_2
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->fl:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz v1, :cond_15

    iget-boolean v1, v4, Lcom/bytedance/sdk/openadsdk/core/model/pA;->kYc:Z

    if-nez v1, :cond_15

    .line 841
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->fl:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;->onAdClicked()V

    return-void

    .line 805
    :pswitch_4
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->CJ:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v1, :cond_d

    .line 806
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;->show()V

    return-void

    .line 808
    :cond_d
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ac:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    if-eqz v1, :cond_e

    .line 809
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/dislike/cJ;->Qhi()V

    return-void

    .line 811
    :cond_e
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->js:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTDelegateActivity;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    return-void

    .line 787
    :pswitch_5
    iget v1, v4, Lcom/bytedance/sdk/openadsdk/core/model/pA;->hpZ:I

    if-lez v1, :cond_f

    .line 788
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Z)V

    .line 790
    :cond_f
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Tgh:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    if-eqz v1, :cond_10

    .line 791
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/pA;)V

    .line 792
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Tgh:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;->Qhi(Ljava/lang/String;)V

    .line 793
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Tgh:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    invoke-virtual/range {v7 .. v14}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;->Qhi(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    .line 798
    :cond_10
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->fl:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz v1, :cond_11

    iget-boolean v1, v4, Lcom/bytedance/sdk/openadsdk/core/model/pA;->kYc:Z

    if-nez v1, :cond_11

    .line 799
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->fl:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;->onAdClicked()V

    :cond_11
    const/4 v1, 0x0

    .line 801
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/lB;->Qhi(Z)V

    .line 802
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/16 v2, 0x9

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    return-void

    .line 771
    :pswitch_6
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zc:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_12

    const/16 v21, 0x0

    const/16 v22, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    .line 772
    invoke-static/range {v15 .. v22}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 774
    :cond_12
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->kYc()I

    move-result v1

    if-ne v1, v6, :cond_13

    if-nez v14, :cond_13

    return-void

    .line 777
    :cond_13
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ROR:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;

    if-eqz v1, :cond_14

    .line 778
    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/pA;)V

    .line 779
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ROR:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;->Qhi(Ljava/lang/String;)V

    .line 780
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ROR:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;

    invoke-virtual/range {v7 .. v14}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;->Qhi(Landroid/view/View;FFFFLandroid/util/SparseArray;Z)V

    .line 782
    :cond_14
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->fl:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz v1, :cond_15

    iget-boolean v1, v4, Lcom/bytedance/sdk/openadsdk/core/model/pA;->kYc:Z

    if-nez v1, :cond_15

    .line 783
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->fl:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;->onAdClicked()V

    :cond_15
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/fl;Lcom/bytedance/sdk/component/adexpress/cJ/pA;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/adexpress/cJ/fl<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/component/adexpress/cJ/pA;",
            ")V"
        }
    .end annotation

    .line 1044
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->FQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 1045
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->aP:Lcom/bytedance/sdk/component/adexpress/cJ/fl;

    .line 1046
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ots:I

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getWindowVisibility()I

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1047
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getWindowVisibility()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->fl(I)V

    .line 1049
    :cond_0
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/fl;->ac()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v2, "render type is  "

    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 1050
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/fl;->ac()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->hpZ()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1051
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJ(I)V

    .line 1053
    :cond_1
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/fl;->ac()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 1054
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/fl;->ac()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/fl;->ac()I

    move-result v0

    if-eq v0, v2, :cond_2

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/fl;->ac()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 1055
    :cond_2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/fl;->fl()Landroid/view/View;

    move-result-object v0

    .line 1056
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1057
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1059
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v1, v3

    .line 1060
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 1061
    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1063
    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_6

    .line 1064
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/bytedance/sdk/component/widget/SSWebView;

    if-eqz v1, :cond_5

    .line 1065
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->removeView(Landroid/view/View;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1068
    :cond_6
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/fl;->fl()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->addView(Landroid/view/View;)V

    .line 1071
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_8

    .line 1072
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJ()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->pM:J

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/fl;->ac()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(JJLjava/lang/String;I)V

    .line 1074
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dVA:Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    if-eqz p1, :cond_9

    .line 1075
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Gm()V

    .line 1078
    :cond_9
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->fl:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz p1, :cond_a

    .line 1080
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->CJ()D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/cJ/pA;->fl()D

    move-result-wide v1

    double-to-float v1, v1

    .line 1079
    invoke-interface {p1, p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;->onRenderSuccess(Landroid/view/View;FF)V

    .line 1083
    :cond_a
    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/pA;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1084
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getDynamicShowType()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ac(I)Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/model/tP;Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;)V

    .line 1086
    :cond_b
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->yN:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;

    if-eqz p1, :cond_c

    .line 1087
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method protected Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/iMK$Qhi;)V
    .locals 0

    return-void
.end method

.method public Qhi(Ljava/lang/CharSequence;IIZ)V
    .locals 0

    .line 1240
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cJ(II)V

    return-void
.end method

.method protected Qhi(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public Qhi(Z)V
    .locals 0

    return-void
.end method

.method protected Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/pA;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public Sf()V
    .locals 3

    .line 575
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->aP:Lcom/bytedance/sdk/component/adexpress/cJ/fl;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    return-void

    .line 579
    :cond_0
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Sf()V

    .line 582
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 583
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->Qhi(J)V

    :cond_2
    return-void
.end method

.method protected Tgh()V
    .locals 4

    .line 274
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->MQ:Ljava/util/HashSet;

    .line 275
    new-instance v0, Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dIT:Lcom/bytedance/sdk/component/adexpress/theme/ThemeStatusBroadcastReceiver;

    .line 276
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->WAv:Lcom/bytedance/sdk/openadsdk/AdSlot;

    if-eqz v0, :cond_2

    .line 277
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedWidth()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->sDy:F

    .line 278
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->WAv:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getExpressViewAcceptedHeight()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->lB:F

    .line 279
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ROR()V

    .line 280
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->WAv:Lcom/bytedance/sdk/openadsdk/AdSlot;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getCodeId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->NFd:Ljava/lang/String;

    .line 282
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    const-string v1, "fullscreen_interstitial_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->NFd:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->tP(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->bxS:I

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    const-string v1, "rewarded_video"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->NFd:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->WAv(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->bxS:I

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    const-string v1, "open_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 287
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->NFd:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->EBS(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->bxS:I

    if-gez v0, :cond_2

    const/4 v0, 0x5

    .line 289
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->bxS:I

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 293
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->setBackgroundColor(I)V

    .line 294
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gT()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 295
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Sf:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->PAe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    return-void

    .line 297
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hpZ()V

    .line 299
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cjC:Ljava/util/List;

    .line 300
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->HzH()V

    .line 301
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Dq:Lcom/bytedance/sdk/component/adexpress/cJ/HzH;

    if-eqz v0, :cond_4

    .line 302
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->cJ()Lcom/bytedance/sdk/component/adexpress/fl/Qhi;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    .line 304
    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getJsObject()Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 306
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Tgh(Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method public WAv()V
    .locals 1

    .line 980
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->cJ()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 981
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Tgh()V

    :cond_0
    return-void
.end method

.method public a_(I)V
    .locals 2

    .line 1101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dVA:Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    if-eqz v0, :cond_1

    .line 1102
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qhi:Z

    if-nez v1, :cond_0

    .line 1103
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/WAv;->Sf()V

    .line 1105
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dVA:Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/WAv;->hm()V

    .line 1106
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dVA:Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/zc;->Gm()V

    .line 1108
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->fl:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    if-eqz v0, :cond_2

    .line 1110
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/Sf;->Qhi(I)Ljava/lang/String;

    move-result-object v1

    .line 1109
    invoke-interface {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;->onRenderFail(Landroid/view/View;Ljava/lang/String;I)V

    .line 1112
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->yN:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;

    if-eqz p1, :cond_3

    .line 1113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hpZ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public ac()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected ac(I)Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;
    .locals 1

    .line 1092
    new-instance v0, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh$Qhi;-><init>(I)V

    return-object v0
.end method

.method public cJ()V
    .locals 0

    return-void
.end method

.method public cJ(I)V
    .locals 0

    return-void
.end method

.method protected cJ(II)V
    .locals 8

    .line 1268
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    const-string v1, "banner_ad"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1273
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->bxS:I

    const/4 v1, 0x0

    if-lt p2, v0, :cond_1

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Dww:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->hm:Ljava/lang/String;

    const-string v2, "open_ad"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1274
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->CJ()I

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 1279
    :goto_0
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->bxS:I

    if-gt p2, v2, :cond_5

    .line 1280
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1281
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->bxS:I

    int-to-double v2, v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->Tgh()D

    move-result-wide v4

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->FQ()Lcom/bykv/vk/openvk/component/video/api/ac/cJ;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bykv/vk/openvk/component/video/api/ac/cJ;->EBS()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    int-to-double v4, p2

    sub-double/2addr v2, v4

    double-to-int p2, v2

    goto :goto_1

    .line 1283
    :cond_4
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->bxS:I

    sub-int p2, v2, p2

    goto :goto_1

    :cond_5
    move p2, v1

    .line 1286
    :goto_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Eh:Lcom/bytedance/sdk/component/adexpress/cJ/cJ;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->cJ()Lcom/bytedance/sdk/component/adexpress/dynamic/fl;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1288
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Eh:Lcom/bytedance/sdk/component/adexpress/cJ/cJ;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->cJ()Lcom/bytedance/sdk/component/adexpress/dynamic/fl;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, p2, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/fl;->Qhi(Ljava/lang/CharSequence;IIZ)V

    .line 1291
    :cond_6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->aP:Lcom/bytedance/sdk/component/adexpress/cJ/fl;

    instance-of v3, v2, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    if-eqz v3, :cond_7

    .line 1292
    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v0, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Qhi(Ljava/lang/CharSequence;IIZ)V

    :cond_7
    return-void
.end method

.method public cJ(ILjava/lang/String;)V
    .locals 3

    .line 1316
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->aP:Lcom/bytedance/sdk/component/adexpress/cJ/fl;

    if-nez v0, :cond_0

    return-void

    .line 1320
    :cond_0
    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    if-eqz v1, :cond_1

    .line 1321
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hpZ()Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1323
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1325
    :try_start_0
    const-string v2, "time"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1326
    const-string p1, "flag"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1327
    const-string p1, "onVideoPaused"

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public d_()V
    .locals 0

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    .line 675
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Tgh:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;->cJ(I)V

    .line 677
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Tgh:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;->Qhi(I)V

    .line 678
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Tgh:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;->ac(I)V

    .line 681
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ROR:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;

    if-eqz v0, :cond_1

    .line 682
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;->cJ(I)V

    .line 683
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ROR:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;->Qhi(I)V

    .line 684
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ROR:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;->ac(I)V

    .line 687
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, -0x1

    :cond_2
    :goto_0
    move v5, v1

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    .line 696
    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ReL:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->oU:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ReL:F

    .line 697
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->EGK:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->pv:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->EGK:F

    .line 698
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->oU:F

    .line 699
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->pv:F

    .line 700
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->gga:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v0, v4

    if-lez v0, :cond_6

    .line 701
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ReL:F

    const/high16 v1, 0x41000000    # 8.0f

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_5

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->EGK:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_6

    :cond_5
    move v5, v2

    goto :goto_1

    :cond_6
    move v5, v3

    goto :goto_1

    .line 689
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->oU:F

    .line 690
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->pv:F

    .line 692
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->gga:J

    goto :goto_0

    .line 717
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->HLI:Landroid/util/SparseArray;

    if-eqz v0, :cond_8

    .line 718
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/cJ/ac$Qhi;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSize()F

    move-result v3

    float-to-double v6, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPressure()F

    move-result v3

    float-to-double v8, v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    move-object v4, v2

    invoke-direct/range {v4 .. v11}, Lcom/bytedance/sdk/openadsdk/core/cJ/ac$Qhi;-><init>(IDDJ)V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 720
    :cond_8
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public fl()V
    .locals 0

    return-void
.end method

.method public fl(I)V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->aP:Lcom/bytedance/sdk/component/adexpress/cJ/fl;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    if-eqz v1, :cond_0

    .line 597
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->cJ(I)V

    .line 598
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ots:I

    :cond_0
    return-void
.end method

.method public getAdShowTime()Lcom/bytedance/sdk/openadsdk/cJ/Sf;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->CQU:Lcom/bytedance/sdk/openadsdk/cJ/Sf;

    return-object v0
.end method

.method public getBrandBannerController()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->PAe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    return-object v0
.end method

.method public getClickCreativeListener()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;
    .locals 1

    .line 556
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Tgh:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    return-object v0
.end method

.method public getClickListener()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ROR:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;

    return-object v0
.end method

.method public getClosedListenerKey()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->js:Ljava/lang/String;

    return-object v0
.end method

.method public getDynamicShowType()I
    .locals 1

    .line 1123
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->aP:Lcom/bytedance/sdk/component/adexpress/cJ/fl;

    if-eqz v0, :cond_0

    .line 1124
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/fl;->ac()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getExpectExpressHeight()I
    .locals 1

    .line 1171
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->lB:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    return v0
.end method

.method public getExpectExpressWidth()I
    .locals 1

    .line 1167
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->sDy:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    return v0
.end method

.method public getJsObject()Lcom/bytedance/sdk/openadsdk/core/NFd;
    .locals 1

    .line 1176
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    if-eqz v0, :cond_0

    .line 1177
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->hpZ()Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRenderEngineCacheType()I
    .locals 2

    .line 1157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->aP:Lcom/bytedance/sdk/component/adexpress/cJ/fl;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    if-eqz v1, :cond_0

    .line 1158
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->pA()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hm;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1160
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/hm;->Qhi()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected getRenderTimeout()I
    .locals 1

    .line 433
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->aP()I

    move-result v0

    return v0
.end method

.method public getUgenTemplateErrorReason()Ljava/lang/String;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Jma:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoProgress()J
    .locals 2

    .line 857
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->VnT:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/VastBannerBackupView;

    if-eqz v0, :cond_0

    .line 858
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/VastBannerBackupView;->getVideoProgress()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getWebView()Lcom/bytedance/sdk/component/widget/SSWebView;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 334
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;->Qhi()Lcom/bytedance/sdk/component/widget/SSWebView;

    move-result-object v0

    return-object v0
.end method

.method public hm()V
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-nez v0, :cond_0

    return-void

    .line 644
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->pM:J

    .line 645
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->gT()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 646
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->PAe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    if-nez v0, :cond_1

    const/16 v0, 0x6a

    .line 647
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->a_(I)V

    return-void

    .line 649
    :cond_1
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;)V

    .line 650
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->PAe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Qhi()V

    return-void

    .line 653
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->lG:Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac/Tgh;->Qhi()V

    .line 654
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->YB:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    if-eqz v0, :cond_3

    .line 655
    invoke-interface {v0, p0}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;)V

    .line 658
    :cond_3
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->YB:Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->Qhi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public iMK()V
    .locals 3

    .line 1302
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1303
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/tP;->cJP()Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/Qhi;->Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/fl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getVideoProgress()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ROR/fl;->fl(J)V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 937
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->onAttachedToWindow()V

    .line 938
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->qMt()V

    .line 939
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->bxS()V

    .line 940
    const-string v0, "webviewpool"

    const-string v1, "onAttachedToWindow+++"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ip:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 942
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->js:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zn:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/hm;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1027
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->onDetachedFromWindow()V

    .line 1028
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ip:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 1029
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/hm;->cJ()Lcom/bytedance/sdk/openadsdk/core/hm;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->js:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/hm;->Tgh(Ljava/lang/String;)V

    .line 1031
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Dww()V

    .line 1032
    const-string v0, "webviewpool"

    const-string v1, "onDetachedFromWindow==="

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 2

    .line 953
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->onFinishTemporaryDetach()V

    .line 954
    const-string v0, "webviewpool"

    const-string v1, "onFinishTemporaryDetach+++"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 947
    invoke-super/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->onLayout(ZIIII)V

    .line 948
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->qMt()V

    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 2

    .line 1037
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->onStartTemporaryDetach()V

    .line 1039
    const-string v0, "webviewpool"

    const-string v1, "onStartTemporaryDetach==="

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    .line 621
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->onWindowFocusChanged(Z)V

    .line 622
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    const/16 v2, 0x8

    if-ge v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 624
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getVisibility()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->onWindowVisibilityChanged(I)V

    .line 626
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->qMt()V

    if-eqz p1, :cond_2

    .line 628
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    const/4 v0, 0x4

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    return-void

    .line 630
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Gm:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/MQ/Qhi/Tgh;->Qhi(Lcom/bytedance/sdk/openadsdk/core/model/tP;I)V

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 1

    .line 604
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/customview/PAGFrameLayout;->onWindowVisibilityChanged(I)V

    const/4 v0, 0x1

    .line 605
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qhi(IZ)V

    return-void
.end method

.method public pA()Z
    .locals 1

    .line 1312
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->FQ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public setBackupListener(Lcom/bytedance/sdk/component/adexpress/cJ/ac;)V
    .locals 1

    .line 568
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->pA:Lcom/bytedance/sdk/component/adexpress/cJ/ac;

    .line 569
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Hf:Lcom/bytedance/sdk/component/adexpress/cJ/ROR;

    if-eqz v0, :cond_0

    .line 570
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/adexpress/cJ/ROR;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/ac;)V

    :cond_0
    return-void
.end method

.method public setBannerClickClosedListener(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zn:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/Qhi$Qhi;

    return-void
.end method

.method public setClickCreativeListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Tgh:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;

    if-eqz p1, :cond_0

    .line 551
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/ROR;->Qhi(Lcom/bytedance/sdk/openadsdk/core/cJ/Qhi$Qhi;)V

    :cond_0
    return-void
.end method

.method public setClickListener(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;)V
    .locals 0

    .line 564
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ROR:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/Sf;

    return-void
.end method

.method public setClosedListenerKey(Ljava/lang/String;)V
    .locals 1

    .line 183
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->js:Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->PAe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Qhi(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDislike(Lcom/bytedance/sdk/openadsdk/dislike/cJ;)V
    .locals 2

    .line 529
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->aP:Lcom/bytedance/sdk/component/adexpress/cJ/fl;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/pA;

    if-eqz v1, :cond_0

    .line 530
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/fl;->fl()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;

    if-eqz v0, :cond_0

    .line 532
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->setDislikeInner(Lcom/bytedance/sdk/openadsdk/core/CQU;)V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->PAe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    if-eqz v0, :cond_1

    .line 536
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/core/CQU;)V

    .line 538
    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->ac:Lcom/bytedance/sdk/openadsdk/dislike/cJ;

    return-void
.end method

.method public setExpressInteractionListener(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V
    .locals 1

    .line 542
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->fl:Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;

    .line 543
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->PAe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    if-eqz v0, :cond_0

    .line 544
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;)V

    :cond_0
    return-void
.end method

.method public setJsbLandingPageOpenListener(Lcom/bytedance/sdk/openadsdk/core/widget/ac;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Qe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/kYc;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getJsObject()Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getJsObject()Lcom/bytedance/sdk/openadsdk/core/NFd;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/NFd;->Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/ac;)Lcom/bytedance/sdk/openadsdk/core/NFd;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->dI:Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    if-eqz v0, :cond_1

    .line 146
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/core/widget/ac;)V

    :cond_1
    return-void
.end method

.method public setOuterDislike(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 2

    .line 516
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->aP:Lcom/bytedance/sdk/component/adexpress/cJ/fl;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/pA;

    if-eqz v1, :cond_0

    .line 517
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/fl;->fl()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;

    if-eqz v0, :cond_0

    .line 519
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/BackupView;->setDislikeOuter(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->PAe:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;

    if-eqz v0, :cond_1

    .line 523
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/cJ;->Qhi(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    .line 525
    :cond_1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->CJ:Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    return-void
.end method

.method public setSoundMute(Z)V
    .locals 2

    .line 1245
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->EBS:Z

    .line 1246
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Eh:Lcom/bytedance/sdk/component/adexpress/cJ/cJ;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->cJ()Lcom/bytedance/sdk/component/adexpress/dynamic/fl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1247
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->Eh:Lcom/bytedance/sdk/component/adexpress/cJ/cJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/cJ;->cJ()Lcom/bytedance/sdk/component/adexpress/dynamic/fl;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/fl;->setSoundMute(Z)V

    .line 1249
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->aP:Lcom/bytedance/sdk/component/adexpress/cJ/fl;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/fl;->ac()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 1250
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->aP:Lcom/bytedance/sdk/component/adexpress/cJ/fl;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugen/ac/ac;->setSoundMute(Z)V

    :cond_1
    return-void
.end method

.method public setTimeUpdate(I)V
    .locals 0

    return-void
.end method

.method public setVastVideoHelper(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/VastBannerBackupView;)V
    .locals 0

    .line 1308
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->VnT:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/VastBannerBackupView;

    return-void
.end method

.method public zc()V
    .locals 1

    .line 1016
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zc:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->zc:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->removeView(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method
