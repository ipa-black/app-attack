.class public final synthetic Lcom/google/android/gms/internal/ads/zzcnr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzcnv;

.field public final synthetic zzb:Landroid/view/View;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzcep;

.field public final synthetic zzd:I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcnv;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcep;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zza:Lcom/google/android/gms/internal/ads/zzcnv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zzb:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zzc:Lcom/google/android/gms/internal/ads/zzcep;

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zzd:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zza:Lcom/google/android/gms/internal/ads/zzcnv;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zzb:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zzc:Lcom/google/android/gms/internal/ads/zzcep;

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzcnr;->zzd:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcnv;->zzn(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcep;I)V

    return-void
.end method
