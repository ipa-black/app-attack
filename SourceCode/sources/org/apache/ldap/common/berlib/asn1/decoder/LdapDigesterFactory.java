package org.apache.ldap.common.berlib.asn1.decoder;

import org.apache.asn1.ber.digester.BERDigester;
import org.apache.asn1.ber.digester.TagTree;
import org.apache.asn1.ber.digester.rules.Octets2StringRule;
import org.apache.asn1.ber.digester.rules.PopOnFinish;
import org.apache.asn1.ber.digester.rules.PrimitiveIntDecodeRule;
import org.apache.asn1.ber.digester.rules.PrimitiveOctetStringRule;
import org.apache.asn1.ber.primitives.UniversalTag;
import org.apache.ldap.common.berlib.asn1.LdapTag;
import org.apache.ldap.common.berlib.asn1.decoder.abandon.AbandonRequestRule;
import org.apache.ldap.common.berlib.asn1.decoder.add.AddAttributeValueRule;
import org.apache.ldap.common.berlib.asn1.decoder.add.AddRequestAttributesRule;
import org.apache.ldap.common.berlib.asn1.decoder.add.AddRequestEntryDnRule;
import org.apache.ldap.common.berlib.asn1.decoder.add.AddRequestRule;
import org.apache.ldap.common.berlib.asn1.decoder.add.AddResponseRule;
import org.apache.ldap.common.berlib.asn1.decoder.bind.BindNameRule;
import org.apache.ldap.common.berlib.asn1.decoder.bind.BindRequestRule;
import org.apache.ldap.common.berlib.asn1.decoder.bind.BindResponseRule;
import org.apache.ldap.common.berlib.asn1.decoder.bind.BindSimpleCredentialsRule;
import org.apache.ldap.common.berlib.asn1.decoder.bind.BindVersionRule;
import org.apache.ldap.common.berlib.asn1.decoder.compare.CompareAVARule;
import org.apache.ldap.common.berlib.asn1.decoder.compare.CompareEntryRule;
import org.apache.ldap.common.berlib.asn1.decoder.compare.CompareRequestRule;
import org.apache.ldap.common.berlib.asn1.decoder.compare.CompareResponseRule;
import org.apache.ldap.common.berlib.asn1.decoder.delete.DeleteRequestRule;
import org.apache.ldap.common.berlib.asn1.decoder.delete.DeleteResponseRule;
import org.apache.ldap.common.berlib.asn1.decoder.extended.ExtendedRequestOidRule;
import org.apache.ldap.common.berlib.asn1.decoder.extended.ExtendedRequestPayloadRule;
import org.apache.ldap.common.berlib.asn1.decoder.extended.ExtendedRequestRule;
import org.apache.ldap.common.berlib.asn1.decoder.extended.ExtendedResponseOidRule;
import org.apache.ldap.common.berlib.asn1.decoder.extended.ExtendedResponsePayloadRule;
import org.apache.ldap.common.berlib.asn1.decoder.extended.ExtendedResponseRule;
import org.apache.ldap.common.berlib.asn1.decoder.modify.ModificationItemRule;
import org.apache.ldap.common.berlib.asn1.decoder.modify.ModifyRequestAttributeValueRule;
import org.apache.ldap.common.berlib.asn1.decoder.modify.ModifyRequestEntryDnRule;
import org.apache.ldap.common.berlib.asn1.decoder.modify.ModifyRequestRule;
import org.apache.ldap.common.berlib.asn1.decoder.modify.ModifyResponseRule;
import org.apache.ldap.common.berlib.asn1.decoder.modifydn.ModifyDnRequestDeleteOldRdnRule;
import org.apache.ldap.common.berlib.asn1.decoder.modifydn.ModifyDnRequestEntryRule;
import org.apache.ldap.common.berlib.asn1.decoder.modifydn.ModifyDnRequestNewRdnRule;
import org.apache.ldap.common.berlib.asn1.decoder.modifydn.ModifyDnRequestNewSuperiorRule;
import org.apache.ldap.common.berlib.asn1.decoder.modifydn.ModifyDnRequestRule;
import org.apache.ldap.common.berlib.asn1.decoder.modifydn.ModifyDnResponseRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.AndRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.ApproxMatchRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.BaseObjectRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.DerefAliasRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.EqualityMatchRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.ExtensibleMatchDnAttributesRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.ExtensibleMatchMatchingRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.ExtensibleMatchRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.ExtensibleMatchTypeRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.ExtensibleMatchValueRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.GreaterOrEqualRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.LessOrEqualRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.NotRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.OrRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.PresentRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.RequestedAttributesRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.RequestedAttributesStateChangeRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.ScopeRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.SearchRequestRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.SearchResponseDoneRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.SearchResponseEntryAttributesRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.SearchResponseEntryDnRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.SearchResponseEntryRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.SearchResponseReferenceRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.SearchResponseReferralRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.SizeLimitRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.SubstringMatchAnyRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.SubstringMatchFinalRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.SubstringMatchInitialRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.SubstringMatchRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.TerminateFilterStateRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.TimeLimitRule;
import org.apache.ldap.common.berlib.asn1.decoder.search.TypesOnlyRule;
import org.apache.ldap.common.berlib.asn1.decoder.unbind.UnbindRequestRule;
/* loaded from: classes3.dex */
public class LdapDigesterFactory {
    private static LdapDigesterFactory singleton;

    private LdapDigesterFactory() {
        singleton = this;
    }

    public static LdapDigesterFactory getSingleton() {
        if (singleton == null) {
            singleton = new LdapDigesterFactory();
        }
        return singleton;
    }

    public BERDigester create() {
        BERDigester bERDigester = new BERDigester();
        addMessageIdRules(bERDigester);
        addAbandonRequestRules(bERDigester);
        addAddResponseRules(bERDigester);
        addAddRequestRules(bERDigester);
        addUnbindRequestRules(bERDigester);
        addBindRequestRules(bERDigester);
        addBindResponseRules(bERDigester);
        addCompareRequestRules(bERDigester);
        addCompareResponseRules(bERDigester);
        addDeleteRequestRules(bERDigester);
        addDeleteResponseRules(bERDigester);
        addExtendedRequestRules(bERDigester);
        addExtendedResponseRules(bERDigester);
        addModifyDnRequestRules(bERDigester);
        addModifyDnResponseRules(bERDigester);
        addModifyRequestRules(bERDigester);
        addModifyResponseRules(bERDigester);
        addSearchRequestRules(bERDigester);
        addSearchResponseDoneRules(bERDigester);
        addSearchResponseReferenceRules(bERDigester);
        addSearchResponseEntryRules(bERDigester);
        return bERDigester;
    }

    private void addSearchRequestRules(BERDigester bERDigester) {
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.SEARCH_REQUEST.getPrimitiveTag()}, new SearchRequestRule());
        int[] iArr = {UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.SEARCH_REQUEST.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()};
        bERDigester.addRule(iArr, new BaseObjectRule());
        iArr[2] = UniversalTag.ENUMERATED.getPrimitiveTag();
        bERDigester.addRule(iArr, new ScopeRule());
        bERDigester.addRule(iArr, new DerefAliasRule());
        iArr[2] = UniversalTag.INTEGER.getPrimitiveTag();
        bERDigester.addRule(iArr, new SizeLimitRule());
        bERDigester.addRule(iArr, new TimeLimitRule());
        iArr[2] = UniversalTag.BOOLEAN.getPrimitiveTag();
        bERDigester.addRule(iArr, new TypesOnlyRule());
        iArr[2] = UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag();
        bERDigester.addRule(iArr, new TerminateFilterStateRule());
        bERDigester.addRule(iArr, new RequestedAttributesStateChangeRule());
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.SEARCH_REQUEST.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()}, new RequestedAttributesRule());
        bERDigester.addRule(new int[]{TagTree.WILDCARD, LdapTag.CONTEXT_SPECIFIC_TAG_7.getPrimitiveTag()}, new PresentRule());
        int[] iArr2 = {TagTree.WILDCARD, LdapTag.CONTEXT_SPECIFIC_TAG_3.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()};
        bERDigester.addRule(iArr2, new EqualityMatchRule());
        iArr2[1] = LdapTag.CONTEXT_SPECIFIC_TAG_4.getPrimitiveTag();
        bERDigester.addRule(iArr2, new Octets2StringRule());
        iArr2[2] = UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag();
        bERDigester.addRule(iArr2, new SubstringMatchRule());
        int[] iArr3 = {TagTree.WILDCARD, LdapTag.CONTEXT_SPECIFIC_TAG_4.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.CONTEXT_SPECIFIC_TAG_0.getPrimitiveTag()};
        bERDigester.addRule(iArr3, new SubstringMatchInitialRule());
        iArr3[3] = LdapTag.CONTEXT_SPECIFIC_TAG_1.getPrimitiveTag();
        bERDigester.addRule(iArr3, new SubstringMatchAnyRule());
        iArr3[3] = LdapTag.CONTEXT_SPECIFIC_TAG_2.getPrimitiveTag();
        bERDigester.addRule(iArr3, new SubstringMatchFinalRule());
        int[] iArr4 = {TagTree.WILDCARD, LdapTag.CONTEXT_SPECIFIC_TAG_5.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()};
        bERDigester.addRule(iArr4, new GreaterOrEqualRule());
        iArr4[1] = LdapTag.CONTEXT_SPECIFIC_TAG_6.getPrimitiveTag();
        bERDigester.addRule(iArr4, new LessOrEqualRule());
        iArr4[1] = LdapTag.CONTEXT_SPECIFIC_TAG_8.getPrimitiveTag();
        bERDigester.addRule(iArr4, new ApproxMatchRule());
        bERDigester.addRule(new int[]{TagTree.WILDCARD, LdapTag.CONTEXT_SPECIFIC_TAG_9.getPrimitiveTag()}, new ExtensibleMatchRule());
        int[] iArr5 = {TagTree.WILDCARD, LdapTag.CONTEXT_SPECIFIC_TAG_9.getPrimitiveTag(), LdapTag.CONTEXT_SPECIFIC_TAG_1.getPrimitiveTag()};
        bERDigester.addRule(iArr5, new ExtensibleMatchMatchingRule());
        iArr5[2] = LdapTag.CONTEXT_SPECIFIC_TAG_2.getPrimitiveTag();
        bERDigester.addRule(iArr5, new ExtensibleMatchTypeRule());
        iArr5[2] = LdapTag.CONTEXT_SPECIFIC_TAG_3.getPrimitiveTag();
        bERDigester.addRule(iArr5, new ExtensibleMatchValueRule());
        iArr5[2] = LdapTag.CONTEXT_SPECIFIC_TAG_4.getPrimitiveTag();
        bERDigester.addRule(iArr5, new ExtensibleMatchDnAttributesRule());
        int[] iArr6 = {TagTree.WILDCARD, LdapTag.CONTEXT_SPECIFIC_TAG_0.getPrimitiveTag()};
        bERDigester.addRule(iArr6, new AndRule());
        iArr6[1] = LdapTag.CONTEXT_SPECIFIC_TAG_1.getPrimitiveTag();
        bERDigester.addRule(iArr6, new OrRule());
        iArr6[1] = LdapTag.CONTEXT_SPECIFIC_TAG_2.getPrimitiveTag();
        bERDigester.addRule(iArr6, new NotRule());
    }

    private void addModifyRequestRules(BERDigester bERDigester) {
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.MODIFY_REQUEST.getPrimitiveTag()}, new ModifyRequestRule());
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.MODIFY_REQUEST.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()}, new ModifyRequestEntryDnRule());
        int[] iArr = {UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.MODIFY_REQUEST.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), UniversalTag.ENUMERATED.getPrimitiveTag()};
        bERDigester.addRule(iArr, new PrimitiveIntDecodeRule(UniversalTag.ENUMERATED));
        iArr[4] = UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag();
        bERDigester.addRule(iArr, new PopOnFinish());
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.MODIFY_REQUEST.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()}, new ModificationItemRule());
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.MODIFY_REQUEST.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), UniversalTag.SET_SET_OF.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()}, new ModifyRequestAttributeValueRule());
    }

    private void addSearchResponseEntryRules(BERDigester bERDigester) {
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.SEARCH_RESULT_ENTRY.getPrimitiveTag()}, new SearchResponseEntryRule());
        int[] iArr = {UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.SEARCH_RESULT_ENTRY.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()};
        bERDigester.addRule(iArr, new SearchResponseEntryDnRule());
        iArr[0] = UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag();
        iArr[1] = LdapTag.SEARCH_RESULT_ENTRY.getPrimitiveTag();
        iArr[2] = UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag();
        bERDigester.addRule(iArr, new SearchResponseEntryAttributesRule());
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.SEARCH_RESULT_ENTRY.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag()}, new PopOnFinish());
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.SEARCH_RESULT_ENTRY.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()}, new Octets2StringRule());
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.SEARCH_RESULT_ENTRY.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), UniversalTag.SET_SET_OF.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()}, new AddAttributeValueRule());
    }

    private void addAddRequestRules(BERDigester bERDigester) {
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.ADD_REQUEST.getPrimitiveTag()}, new AddRequestRule());
        int[] iArr = {UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.ADD_REQUEST.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()};
        bERDigester.addRule(iArr, new AddRequestEntryDnRule());
        iArr[0] = UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag();
        iArr[1] = LdapTag.ADD_REQUEST.getPrimitiveTag();
        iArr[2] = UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag();
        bERDigester.addRule(iArr, new AddRequestAttributesRule());
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.ADD_REQUEST.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag()}, new PopOnFinish());
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.ADD_REQUEST.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()}, new Octets2StringRule());
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.ADD_REQUEST.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), UniversalTag.SET_SET_OF.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()}, new AddAttributeValueRule());
    }

    private void addSearchResponseReferenceRules(BERDigester bERDigester) {
        int[] iArr = {UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.SEARCH_RESULT_REFERENCE.getPrimitiveTag()};
        bERDigester.addRule(iArr, new SearchResponseReferenceRule());
        bERDigester.addRule(iArr, new SearchResponseReferralRule());
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.SEARCH_RESULT_REFERENCE.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()}, new ReferralUrlRule());
    }

    private void addSearchResponseDoneRules(BERDigester bERDigester) {
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.SEARCH_RESULT_DONE.getPrimitiveTag()}, new SearchResponseDoneRule());
        int[] iArr = {UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.SEARCH_RESULT_DONE.getPrimitiveTag(), UniversalTag.ENUMERATED.getPrimitiveTag()};
        bERDigester.addRule(iArr, new ResultCodeRule());
        iArr[2] = UniversalTag.OCTET_STRING.getPrimitiveTag();
        bERDigester.addRule(iArr, new ResultMatchedDNRule());
        bERDigester.addRule(iArr, new ErrorMessageRule());
        iArr[2] = LdapTag.REFERRAL_TAG.getPrimitiveTag();
        bERDigester.addRule(iArr, new ReferralRule());
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.SEARCH_RESULT_DONE.getPrimitiveTag(), LdapTag.REFERRAL_TAG.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()}, new ReferralUrlRule());
    }

    private void addModifyResponseRules(BERDigester bERDigester) {
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.MODIFY_RESPONSE.getPrimitiveTag()}, new ModifyResponseRule());
        int[] iArr = {UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.MODIFY_RESPONSE.getPrimitiveTag(), UniversalTag.ENUMERATED.getPrimitiveTag()};
        bERDigester.addRule(iArr, new ResultCodeRule());
        iArr[2] = UniversalTag.OCTET_STRING.getPrimitiveTag();
        bERDigester.addRule(iArr, new ResultMatchedDNRule());
        bERDigester.addRule(iArr, new ErrorMessageRule());
        iArr[2] = LdapTag.REFERRAL_TAG.getPrimitiveTag();
        bERDigester.addRule(iArr, new ReferralRule());
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.MODIFY_RESPONSE.getPrimitiveTag(), LdapTag.REFERRAL_TAG.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()}, new ReferralUrlRule());
    }

    private void addAddResponseRules(BERDigester bERDigester) {
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.ADD_RESPONSE.getPrimitiveTag()}, new AddResponseRule());
        int[] iArr = {UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.ADD_RESPONSE.getPrimitiveTag(), UniversalTag.ENUMERATED.getPrimitiveTag()};
        bERDigester.addRule(iArr, new ResultCodeRule());
        iArr[2] = UniversalTag.OCTET_STRING.getPrimitiveTag();
        bERDigester.addRule(iArr, new ResultMatchedDNRule());
        bERDigester.addRule(iArr, new ErrorMessageRule());
        iArr[2] = LdapTag.REFERRAL_TAG.getPrimitiveTag();
        bERDigester.addRule(iArr, new ReferralRule());
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.ADD_RESPONSE.getPrimitiveTag(), LdapTag.REFERRAL_TAG.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()}, new ReferralUrlRule());
    }

    private void addModifyDnRequestRules(BERDigester bERDigester) {
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.MODIFYDN_REQUEST.getPrimitiveTag()}, new ModifyDnRequestRule());
        int[] iArr = {UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.MODIFYDN_REQUEST.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()};
        bERDigester.addRule(iArr, new ModifyDnRequestEntryRule());
        iArr[2] = UniversalTag.OCTET_STRING.getPrimitiveTag();
        bERDigester.addRule(iArr, new ModifyDnRequestNewRdnRule());
        iArr[2] = UniversalTag.BOOLEAN.getPrimitiveTag();
        bERDigester.addRule(iArr, new ModifyDnRequestDeleteOldRdnRule());
        iArr[2] = LdapTag.MODIFYDN_REQUEST_NEWSUP_TAG.getPrimitiveTag();
        bERDigester.addRule(iArr, new ModifyDnRequestNewSuperiorRule());
    }

    private void addModifyDnResponseRules(BERDigester bERDigester) {
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.MODIFYDN_RESPONSE.getPrimitiveTag()}, new ModifyDnResponseRule());
        int[] iArr = {UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.MODIFYDN_RESPONSE.getPrimitiveTag(), UniversalTag.ENUMERATED.getPrimitiveTag()};
        bERDigester.addRule(iArr, new ResultCodeRule());
        iArr[2] = UniversalTag.OCTET_STRING.getPrimitiveTag();
        bERDigester.addRule(iArr, new ResultMatchedDNRule());
        bERDigester.addRule(iArr, new ErrorMessageRule());
        iArr[2] = LdapTag.REFERRAL_TAG.getPrimitiveTag();
        bERDigester.addRule(iArr, new ReferralRule());
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.MODIFYDN_RESPONSE.getPrimitiveTag(), LdapTag.REFERRAL_TAG.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()}, new ReferralUrlRule());
    }

    private void addExtendedRequestRules(BERDigester bERDigester) {
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.EXTENDED_REQUEST.getPrimitiveTag()}, new ExtendedRequestRule());
        int[] iArr = {UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.EXTENDED_REQUEST.getPrimitiveTag(), LdapTag.EXTENDED_REQUEST_NAME_TAG.getPrimitiveTag()};
        bERDigester.addRule(iArr, new ExtendedRequestOidRule());
        iArr[2] = LdapTag.EXTENDED_REQUEST_VALUE_TAG.getPrimitiveTag();
        bERDigester.addRule(iArr, new ExtendedRequestPayloadRule());
    }

    private void addExtendedResponseRules(BERDigester bERDigester) {
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.EXTENDED_RESPONSE.getPrimitiveTag()}, new ExtendedResponseRule());
        int[] iArr = {UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.EXTENDED_RESPONSE.getPrimitiveTag(), UniversalTag.ENUMERATED.getPrimitiveTag()};
        bERDigester.addRule(iArr, new ResultCodeRule());
        iArr[2] = UniversalTag.OCTET_STRING.getPrimitiveTag();
        bERDigester.addRule(iArr, new ResultMatchedDNRule());
        bERDigester.addRule(iArr, new ErrorMessageRule());
        iArr[2] = LdapTag.REFERRAL_TAG.getPrimitiveTag();
        bERDigester.addRule(iArr, new ReferralRule());
        iArr[2] = LdapTag.EXTENDED_RESPONSE_NAME_TAG.getPrimitiveTag();
        bERDigester.addRule(iArr, new ExtendedResponseOidRule());
        iArr[2] = LdapTag.EXTENDED_RESPONSE_VALUE_TAG.getPrimitiveTag();
        bERDigester.addRule(iArr, new ExtendedResponsePayloadRule());
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.EXTENDED_RESPONSE.getPrimitiveTag(), LdapTag.REFERRAL_TAG.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()}, new ReferralUrlRule());
    }

    private void addMessageIdRules(BERDigester bERDigester) {
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getValue(), UniversalTag.INTEGER.getValue()}, new PrimitiveIntDecodeRule());
    }

    private void addDeleteResponseRules(BERDigester bERDigester) {
        bERDigester.addRule(new int[]{268435456, 1258291200}, new DeleteResponseRule());
        int[] iArr = {268435456, 1258291200, 167772160};
        bERDigester.addRule(iArr, new ResultCodeRule());
        iArr[2] = 67108864;
        bERDigester.addRule(iArr, new ResultMatchedDNRule());
        bERDigester.addRule(iArr, new ErrorMessageRule());
        iArr[2] = LdapTag.REFERRAL_TAG.getPrimitiveTag();
        bERDigester.addRule(iArr, new ReferralRule());
        bERDigester.addRule(new int[]{268435456, 1258291200, LdapTag.REFERRAL_TAG.getPrimitiveTag(), 67108864}, new ReferralUrlRule());
    }

    private void addDeleteRequestRules(BERDigester bERDigester) {
        bERDigester.addRule(new int[]{268435456, LdapTag.DEL_REQUEST.getPrimitiveTag()}, new DeleteRequestRule());
    }

    private void addCompareRequestRules(BERDigester bERDigester) {
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.COMPARE_REQUEST.getPrimitiveTag()}, new CompareRequestRule());
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.COMPARE_REQUEST.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()}, new CompareEntryRule());
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.COMPARE_REQUEST.getPrimitiveTag(), UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()}, new CompareAVARule());
    }

    private void addCompareResponseRules(BERDigester bERDigester) {
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.COMPARE_RESPONSE.getPrimitiveTag()}, new CompareResponseRule());
        int[] iArr = {UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.COMPARE_RESPONSE.getPrimitiveTag(), 167772160};
        bERDigester.addRule(iArr, new ResultCodeRule());
        iArr[2] = UniversalTag.OCTET_STRING.getPrimitiveTag();
        bERDigester.addRule(iArr, new ResultMatchedDNRule());
        bERDigester.addRule(iArr, new ErrorMessageRule());
        iArr[2] = LdapTag.REFERRAL_TAG.getPrimitiveTag();
        bERDigester.addRule(iArr, new ReferralRule());
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.COMPARE_RESPONSE.getPrimitiveTag(), LdapTag.REFERRAL_TAG.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()}, new ReferralUrlRule());
    }

    private void addBindResponseRules(BERDigester bERDigester) {
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.BIND_RESPONSE.getPrimitiveTag()}, new BindResponseRule());
        int[] iArr = {UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.BIND_RESPONSE.getPrimitiveTag(), UniversalTag.ENUMERATED.getPrimitiveTag()};
        bERDigester.addRule(iArr, new ResultCodeRule());
        iArr[2] = UniversalTag.OCTET_STRING.getPrimitiveTag();
        bERDigester.addRule(iArr, new ResultMatchedDNRule());
        bERDigester.addRule(iArr, new ErrorMessageRule());
        iArr[2] = LdapTag.REFERRAL_TAG.getPrimitiveTag();
        bERDigester.addRule(iArr, new ReferralRule());
        iArr[2] = LdapTag.SERVER_SASL_CREDS_TAG.getPrimitiveTag();
        bERDigester.addRule(iArr, new PrimitiveOctetStringRule(LdapTag.SERVER_SASL_CREDS_TAG));
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getPrimitiveTag(), LdapTag.BIND_RESPONSE.getPrimitiveTag(), LdapTag.REFERRAL_TAG.getPrimitiveTag(), UniversalTag.OCTET_STRING.getPrimitiveTag()}, new ReferralUrlRule());
    }

    private void addBindRequestRules(BERDigester bERDigester) {
        bERDigester.addRule(new int[]{268435456, 1073741824}, new BindRequestRule());
        bERDigester.addRule(new int[]{268435456, 1073741824, 33554432}, new BindVersionRule());
        bERDigester.addRule(new int[]{268435456, 1073741824, 67108864}, new BindNameRule());
        bERDigester.addRule(new int[]{268435456, 1073741824, Integer.MIN_VALUE}, new BindSimpleCredentialsRule());
    }

    private void addUnbindRequestRules(BERDigester bERDigester) {
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getValue(), LdapTag.UNBIND_REQUEST.getValue()}, new UnbindRequestRule());
    }

    private void addAbandonRequestRules(BERDigester bERDigester) {
        bERDigester.addRule(new int[]{UniversalTag.SEQUENCE_SEQUENCE_OF.getValue(), LdapTag.ABANDON_REQUEST.getValue()}, new AbandonRequestRule());
    }
}
