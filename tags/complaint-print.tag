<complaint-print>
    <script>
        var tag = this;
        tag.data = opts.data || {};
        tag.on('mount', onMount);

        function onMount() {
            window.print();
            window.close();
        }
    </script>

    <style>
        .height-small {
            min-height: 40px;
        }

        .width-small {
            width: 120px;
        }

        .width-medium {
            width: 200px;
        }
    </style>
    <div class="container">
        <h3 class="text-center text-uppercase">{ _t('title_print') }</h3>
        <div class="text-center text-bold text-capitalize">{ _t('subtitle_print') }</div>
        <br>
        <div class="mt-2">
            <h4 class="text-capitalize">{ _t('part')} 1: { _t('about_complaint') }</h4>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td class="text-capitalize bg-gray " colspan="4">A. { _t('data_about_complaint') }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize width-medium">{ _t('complaint_number') }</td>
                        <td class="text-bold">{ data._id }</td>
                        <td class="text-capitalize">{ _t('date_complaint') }</td>
                        <td class="text-bold">{ data.dataqueixa }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('complaint_channel') }</td>
                        <td class="text-bold" colspan="3">{ data.canal }</td>
                    </tr>
                </tbody>
            </table>
            <br>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td class="text-capitalize bg-gray" colspan="6">B. { _t('data_about_complainant') }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize width-medium">{ _t('name_complainant') }</td>
                        <td class="text-bold">{ data.usename }</td>
                        <td class="text-capitalize">{ _t('gender_complainant') }</td>
                        <td class="text-bold">{ data.genero }</td>
                        <td class="text-capitalize">{ _t('age_complainant') }</td>
                        <td class="text-bold">{ data.idade }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('facebook_profile') }</td>
                        <td class="text-bold" colspan="5">{ data.facebook_profile }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('place_residence_complainant') }</td>
                        <td class="text-bold">{ data.municipio }</td>
                        <td class="text-capitalize">{ _t('complainant_telephone') }</td>
                        <td class="text-bold" colspan="3">{ data.numerotelefone }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('profession_complainant') }</td>
                        <td class="text-bold" colspan="5">{ data.profissao }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('place_work_study') }</td>
                        <td class="text-bold">{ data.entidadepublica }</td>
                        <td class="text-capitalize">{ _t('municipality_work_study') }</td>
                        <td class="text-bold" colspan="3">{ data.municipiotrabalho }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('pmsi_number') }</td>
                        <td class="text-bold" colspan="5">{ data.pmsi_number }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('complainant_is_victim') }</td>
                        <td class="text-bold" colspan="5">{ data.vitima }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('victim_name') }</td>
                        <td class="text-bold">{ data.vitima }</td>
                        <td class="text-capitalize">{ _t('gender_victim') }</td>
                        <td class="text-bold">{ data.generovitima }</td>
                        <td class="text-capitalize">{ _t('age_victim') }</td>
                        <td class="text-bold">{ data.idadevitima }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('info_victim_whereabouts') }</td>
                        <td class="text-bold">{ data.encontrarvitima }</td>
                        <td class="text-capitalize">{ _t('victim_telephone') }</td>
                        <td class="text-bold" colspan="3">{ data.telefonevitima }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('potential_additional_victims') }</td>
                        <td class="text-bold">{ data.potential_additional_victims }</td>
                        <td class="text-capitalize">{ _t('identification_additional_victims') }</td>
                        <td class="text-bold" colspan="3">{ data.outrasvitimas }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('emotional_state') }</td>
                        <td class="text-bold" colspan="5">{ data.estmocional }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('impact_harassment') }</td>
                        <td class="text-bold" colspan="5">{ data.consequencias }</td>
                    </tr>
                </tbody>
            </table>
            <br>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td class="text-capitalize bg-gray " colspan="4">C. { _t('data_about_aggressor') }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('name_agressor') }</td>
                        <td class="text-bold">{ data.nomeinfrator }</td>
                        <td class="text-capitalize">{ _t('aggressor_gender') }</td>
                        <td class="text-bold">{ data.generoinfrator }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('profession_agressor') }</td>
                        <td class="text-bold">{ data.profession_agressor }</td>
                        <td class="text-capitalize">{ _t('aggressor_workplace') }</td>
                        <td class="text-bold">{ data.infratorondetrabalha }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('agressor_is_civil_servant') }</td>
                        <td class="text-bold" colspan="3">{ data.agressor_is_civil_servant }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('pmsi_number') }</td>
                        <td class="text-bold">{ data.pmsi_number }</td>
                        <td class="text-capitalize">{ _t('other_additional_info_aggressor') }</td>
                        <td class="text-bold">{ data.infosobreinfrator }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('number_aggressors') }</td>
                        <td class="text-bold">{ data.nrpessoas }</td>
                        <td class="text-capitalize">{ _t('info_case_aggressor') }</td>
                        <td class="text-bold">{ data.infoidentificacainfrator }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('agressor_abuse_authority') }</td>
                        <td colspan="3">
                            <options-yes-no></options-yes-no>
                            <i>{ _t('description') }:</i>
                            <div class="height-small"></div>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('agressor_is_boss') }</td>
                        <td colspan="3">
                            <options-yes-no></options-yes-no>
                        </td>
                    </tr>
                </tbody>
            </table>
            <br>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td class="text-capitalize bg-gray " colspan="4">D. { _t('data_about_harassment') }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('date_harassment') }</td>
                        <td class="text-bold">{ data.qtdvezes }</td>
                        <td class="text-capitalize">{ _t('place_harassment') }</td>
                        <td class="text-bold">{ data.localassedio }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('type_harassment') }</td>
                        <td class="text-bold" colspan="3">{ data.tipoassedio }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('frequency_offence') }</td>
                        <td class="text-bold">{ data.datassedio }</td>
                        <td class="text-capitalize">{ _t('last_date_harassment') }</td>
                        <td class="text-bold">{ data.utimoassedio }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('victim_reaction') }</td>
                        <td class="text-bold" colspan="3">{ data.reacao }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('more_info_what_happened') }</td>
                        <td class="text-bold" colspan="3">{ data.infratorfazianolocal }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('identification_witness') }</td>
                        <td class="text-bold">{ data.testemunhadoassedio }</td>
                        <td class="text-capitalize">{ _t('existence_evidence') }</td>
                        <td class="text-bold">{ data.evidencia }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('evidence_delivered') }</td>
                        <td colspan="3">
                            <options-yes-no hide_dont_know="true"></options-yes-no>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('evidence_text') }</td>
                        <td class="text-bold" colspan="3">
                            <div class="height-small"></div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <br>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td class="text-capitalize bg-gray" colspan="4">E. { _t('data_about_officcer') }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize width-small">{ _t('name') }</td>
                        <td class="text-bold" colspan="3"></td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('profession') }</td>
                        <td class="text-bold" colspan="3"></td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('signature') }</td>
                        <td class="text-bold"></td>
                        <td class="text-capitalize width-small">{ _t('date') }</td>
                        <td class="text-bold"></td>
                    </tr>
                </tbody>
            </table>
            <br>
            <div class="page-break_"></div>
            <br>
            <h4 class="text-capitalize">{ _t('part')} 2: { _t('legal_analyst') }</h4>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td class="text-capitalize bg-gray " colspan="4">A. { _t('legal_recomendation') }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('disciplinary_process') }</td>
                        <td class="text-bold" colspan="3">
                            <label class="form-checkbox form-inline">
                                <input type="checkbox" disabled>
                                <i class="form-icon"></i>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('preliminary_investigation') }</td>
                        <td class="text-bold">
                            <label class="form-checkbox form-inline">
                                <input type="checkbox" disabled>
                                <i class="form-icon"></i>
                            </label>
                        </td>
                        <td class="text-capitalize">{ _t('info_about') }</td>
                        <td>
                            <label class="form-checkbox form-inline">
                                <input type="checkbox" disabled>
                                <i class="form-icon"></i> { _t('inquired') }
                            </label>
                            <label class="form-checkbox form-inline">
                                <input type="checkbox" disabled>
                                <i class="form-icon"></i> { _t('facts_lack') }
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('complaint_file') }</td>
                        <td class="text-bold">
                            <label class="form-checkbox form-inline">
                                <input type="checkbox" disabled>
                                <i class="form-icon"></i>
                            </label>
                        </td>
                        <td class="text-capitalize">{ _t('complaint_file_text') }</td>
                        <td>
                            <label class="form-checkbox">
                                <input type="checkbox" disabled>
                                <i class="form-icon"></i> { _t('breach_of_duty') }
                            </label>
                            <label class="form-checkbox">
                                <input type="checkbox" disabled>
                                <i class="form-icon"></i> { _t('procedure_prescription') }
                            </label>
                            <label class="form-checkbox">
                                <input type="checkbox" disabled>
                                <i class="form-icon"></i> { _t('agressor_dont_under_cfp') }
                            </label>
                            <label class="form-checkbox">
                                <input type="checkbox" disabled>
                                <i class="form-icon"></i> { _t('misuse_rosaboot') }
                            </label>
                        </td>
                    </tr>
                </tbody>
            </table>
            <br>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td class="text-capitalize bg-gray" colspan="2">B. { _t('proposed_agressor_suspension') }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('proposed_agressor_suspension') }?</td>
                        <td>
                            <options-yes-no hide_dont_know="true"></options-yes-no>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('proposed_agressor_suspension_reason') }</td>
                        <td>
                            <label class="form-checkbox">
                                <input type="checkbox" disabled>
                                <i class="form-icon"></i> { _t('integrity_effectiveness_investigation') }
                            </label>
                            <label class="form-checkbox">
                                <input type="checkbox" disabled>
                                <i class="form-icon"></i> { _t('protected_victm') }
                            </label>
                            <label class="form-checkbox">
                                <input type="checkbox" disabled>
                                <i class="form-icon"></i> { _t('others') }
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('proposed_agressor_suspension_text') }</td>
                        <td>
                            <div class="height-small"></div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <br>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td class="text-capitalize bg-gray" colspan="2">C. { _t('proposed_victim_protection') }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('proposed_victim_protection') }?</td>
                        <td>
                            <options-yes-no hide_dont_know="true"></options-yes-no>
                        </td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('proposed_victim_protection_reason') }</td>
                        <td>
                            <label class="form-checkbox">
                                <input type="checkbox" disabled>
                                <i class="form-icon"></i> { _t('bullying') }
                            </label>
                            <label class="form-checkbox">
                                <input type="checkbox" disabled>
                                <i class="form-icon"></i> { _t('threats') }
                            </label>
                            <label class="form-checkbox">
                                <input type="checkbox" disabled>
                                <i class="form-icon"></i> { _t('fear') }
                            </label>
                            <label class="form-checkbox">
                                <input type="checkbox" disabled>
                                <i class="form-icon"></i> { _t('hostile_work') }
                            </label>
                            <label class="form-checkbox">
                                <input type="checkbox" disabled>
                                <i class="form-icon"></i> { _t('others') }
                            </label>
                        </td>
                    </tr>
                </tbody>
            </table>
            <br>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td class="text-capitalize bg-gray">D. { _t('note') }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">
                            <div class="height-small"></div>
                        </td>
                    </tr>
                </tbody>
            </table>
            <br>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td class="text-capitalize bg-gray" colspan="4">E. { _t('data_about_legal_officcer') }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize width-small">{ _t('name') }</td>
                        <td class="text-bold" colspan="3"></td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('profession') }</td>
                        <td class="text-bold" colspan="3"></td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('signature') }</td>
                        <td class="text-bold"></td>
                        <td class="text-capitalize width-small">{ _t('date') }</td>
                        <td class="text-bold"></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</complaint-print>