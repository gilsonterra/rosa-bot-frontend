<complaint-form>
    <script>
        var tag = this;
        tag.data = opts.data || {};
        tag.onSubmit = onSubmit;
        tag.closeModal = closeModal;

        function closeModal(event) {
            showModal(false);
        }

        function showModal(open, message) {
            if (open) {
                tag.refs.modalInfo.classList.add('active');
            }
            else {
                tag.refs.modalInfo.classList.remove('active');
            }

            tag.refs.modalContent.innerHTML = message;
        }

        function onSubmit(event) {
            event.preventDefault();

            var formData = {
                'status': tag.refs.status.value,
                'observacao': tag.refs.observacao.value
            };

            Request.post(APP.getApiUrl('complaint/update/' + tag.data._id), JSON.stringify(formData), function (json) {

                if (json.error) {
                    showModal(true, json.error);
                }
                else {
                    showModal(true, json.status);
                }
            });
        }
    </script>

    <style>
        span {
            font-weight: bold;
            width: 100%;
            padding-bottom: 10px;
        }
    </style>

    <form onsubmit="{ onSubmit }" class="form-horizontal">
        <div class="card" if="{ Object.keys(data).length > 0 }">
            <div class="card-header">
                <div class="float-left">
                    <div class="card-title text-uppercase"> { _t('complaint') }: <b>#{ data._id }</b> </div>
                </div>
                <div class="float-right">
                    <a class="btn btn-link mr-1 text-capitalize" href="/#"><i class="icon icon-back"></i> { _t('back')
                        }</a>
                    <button type="submit" class="btn btn-secondary mr-1 text-capitalize"><i class="icon icon-edit"></i>
                        { _t('edit') }</button>
                    <a class="btn btn-secondary mr-1 text-capitalize" target="_blank" href="/#print/{ data._id }"><i class="icon icon-photo"></i> { _t('print')
                        }</a>
                </div>
            </div>
            <div class="card-body">
                <fieldset>
                    <legend>{ _t('about_complaint') }</legend>
                    <div class="columns">
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('complaint_number') }</label>
                                <span>{ data._id }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('date_complaint') }</label>
                                <span>{ data.dataqueixa }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('complaint_channel') }</label>
                                <span>{ data.canal }</span>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>{ _t('about_complainant') }</legend>
                    <div class="columns">
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('name_complainant') }</label>
                                <span>{ data.usename }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('gender_complainant') }</label>
                                <span>{ data.genero }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('age_complainant') }</label>
                                <span>{ data.idade }</span>
                            </div>
                        </div>
                    </div>
                    <div class="columns">
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('complainant_telephone') }</label>
                                <span>{ data.numerotelefone }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('place_residence_complainant') }</label>
                                <span>{ data.municipio }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('profession_complainant') }</label>
                                <span>{ data.profissao }</span>
                            </div>
                        </div>
                    </div>
                    <div class="columns">
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('place_work_study') }</label>
                                <span>{ data.entidadepublica }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('municipality_work_study') }</label>
                                <span>{ data.municipiotrabalho }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('emotional_state') }</label>
                                <span>{ data.estmocional }</span>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>{ _t('about_victim') }</legend>
                    <div class="columns">
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('victim') }</label>
                                <span>{ data.vitima }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('victim_name') }</label>
                                <span>{ data.nomevitima }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('info_victim_whereabouts') }</label>
                                <span>{ data.encontrarvitima }</span>
                            </div>
                        </div>
                    </div>
                    <div class="columns">
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('victim_telephone') }</label>
                                <span>{ data.telefonevitima }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('potential_additional_victims') }</label>
                                <span>{ data.potential_additional_victims }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('identification_additional_victims')
                                    }</label>
                                <span>{ data.outrasvitimas }</span>
                            </div>
                        </div>
                    </div>
                    <div class="columns">
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('other_info_about_victim') }</label>
                                <span>{ data.infoadicionalvitima }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('impact_harassment') }</label>
                                <span>{ data.consequencias }</span>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>{ _t('about_aggressor') }</legend>
                    <div class="columns">
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('number_aggressors') }</label>
                                <span>{ data.nrpessoas }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('name_agressor') }</label>
                                <span>{ data.nomeinfrator }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('aggressor_gender') }</label>
                                <span>{ data.generoinfrator }</span>
                            </div>
                        </div>
                    </div>
                    <div class="columns">
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('relationship_aggressor') }</label>
                                <span>{ data.deondeconhece }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('aggressor_workplace') }</label>
                                <span>{ data.infratorondetrabalha }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('other_additional_info_aggressor')
                                    }</label>
                                <span>{ data.infosobreinfrator }</span>
                            </div>
                        </div>
                    </div>
                    <div class="columns">
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('info_case_aggressor') }</label>
                                <span>{ data.infoidentificacainfrator }</span>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>{ _t('about_alleged_sexual_harassment') }</legend>
                    <div class="columns">
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('date_harassment') }</label>
                                <span>{ data.datassedio }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('place_harassment') }</label>
                                <span>{ data.localassedio }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('municipality') }</label>
                                <span>{ data.municipioassedio }</span>
                            </div>
                        </div>
                    </div>
                    <div class="columns">
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('type_harassment') }</label>
                                <span>{ data.tipoassedio }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('details_specific_action') }</label>
                                <span>{ data.infratorondetrabalha }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('frequency_offence')
                                    }</label>
                                <span>{ data.qtdvezes }</span>
                            </div>
                        </div>
                    </div>
                    <div class="columns">
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('last_date_harassment') }</label>
                                <span>{ data.datautimoassedio }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('more_info_what_happened') }</label>
                                <span>{ data.infratorfazianolocal }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('victim_reaction') }</label>
                                <span>{ data.reacao }</span>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>{ _t('about_witnesses_evidence') }</legend>
                    <div class="columns">
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('existence_witness') }</label>
                                <span>{ data.existetestemunha }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('identification_witness') }</label>
                                <span>{ data.testemunhadoassedio }</span>
                            </div>
                        </div>
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('existence_evidence') }</label>
                                <span>{ data.evidencia }</span>
                            </div>
                        </div>
                    </div>
                    <div class="columns">
                        <div class="column col-4 col-md-12">
                            <div class="form-group">
                                <label class="form-label text-capitalize">{ _t('delivery_method') }</label>
                                <span>{ data.gravamedia }</span>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <hr>
                <div class="columns">
                    <div class="column col-4 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="observacoes">{ _t('status') }</label>
                            <select class="form-select" name="status" ref="status" value="{ data.status }">
                                <option value="aberto" selected="{ data.status == 'aberto' }">Aberto</option>
                                <option value="fechado" selected="{ data.status == 'fechado' }">Fechado</option>
                                <option value="arquivo" selected="{ data.status == 'arquivo' }">Arquivo</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="columns">
                    <div class="column col-12 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="observacoes">{ _t('notes') }</label>
                            <textarea class="form-input" name="observacao"
                                ref="observacao">{ data.observacao }</textarea>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>

    <!-- Modal -->
    <div class="modal modal-sm" ref="modalInfo">
        <a class="modal-overlay" onclick="{ closeModal }" aria-label="Close"></a>
        <div class="modal-container">
            <div class="modal-header">
                <a onclick="{ closeModal }" class="btn btn-clear float-right" aria-label="Close"></a>
                <div class="modal-title h5 text-capitalize">{ _t('info') }</div>
            </div>
            <div class="modal-body">
                <div class="content" ref="modalContent">
                </div>
            </div>
        </div>
    </div>
</complaint-form>