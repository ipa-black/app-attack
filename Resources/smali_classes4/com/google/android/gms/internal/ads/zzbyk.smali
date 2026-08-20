.class final Lcom/google/android/gms/internal/ads/zzbyk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbyl;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbyl;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyk;->zza:Lcom/google/android/gms/internal/ads/zzbyl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbyk;->zza:Lcom/google/android/gms/internal/ads/zzbyl;

    const-string p2, "Operation denied by user."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbyt;->zzg(Ljava/lang/String;)V

    return-void
.end method
